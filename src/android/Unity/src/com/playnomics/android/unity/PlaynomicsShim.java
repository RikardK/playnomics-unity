package com.playnomics.android.unity;

import java.util.Date;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import com.playnomics.android.sdk.IPlaynomicsPlacementRawDelegate;
import com.playnomics.android.sdk.IPlaynomicsSegmentationDelegate;
import com.playnomics.android.sdk.Playnomics;
import com.playnomics.android.util.Logger.LogLevel;

/*
 * PlaynomicsShim is responsible for coordinating calls from the Unity SDK layer to the Android SDK
 * that require an Android activity. These calls are intended to be decoupled from the MainActivity.
 */
public class PlaynomicsShim {	
	private static IPlaynomicsPlacementRawDelegate delegate = new PlacementDelegate();
	private static IPlaynomicsSegmentationDelegate segmentationDelegate = new SegmentationDelegate();
	private static final String TAG = Playnomics.class.getSimpleName();
	public static void start(long applicationId, String userId){
		Playnomics.start(com.unity3d.player.UnityPlayer.currentActivity, applicationId, userId);
	}
	
	public static void start(long applicationId){
		Playnomics.start(com.unity3d.player.UnityPlayer.currentActivity, applicationId);
	}

	public static void customEvent(String customEventName){
		Log.d(TAG, String.format("customEvent { customEventName : %s }", customEventName));
		Playnomics.customEvent(customEventName);
	}
	
	public static void transactionInUSD(float price, int quantity){
		Log.d(TAG, String.format("transactionInUSD { price : %f, quantity : %d }", price, quantity));
		Playnomics.transactionInUSD(price, quantity);
	}
	
	public static void attributeInstall(String source){
		Log.d(TAG, String.format("attributeInstall { source : %s }", source));
		Playnomics.attributeInstall(source);
	}
	
	public static void attributeInstall(String source, String campaign){
		Log.d(TAG, String.format("attributeInstall { source : %s, campaign : %s }", source, campaign));
		Playnomics.attributeInstall(source, campaign);
	}
	
	public static void attributeInstall(String source, String campaign, long installTimeMilliseconds){
		Date installDate = new Date(installTimeMilliseconds);
		Log.d(TAG, String.format("attributeInstall { source : %s, campaign : %s }", source, campaign));
		Playnomics.attributeInstall(source, campaign, installDate);
	}

	public static void preloadPlacement(String placementName){
		Log.d(TAG, String.format("preloadPlacement { placementName : %s }", placementName));
		Playnomics.preloadPlacements(placementName);
	}
	
	public static void showPlacement(String placementName){
		Log.d(TAG, String.format("showPlacement { placementName : %s }", placementName));
		if(com.unity3d.player.UnityPlayer.currentActivity != null){
			Playnomics.showPlacement(placementName, com.unity3d.player.UnityPlayer.currentActivity, delegate);
		}
	}

	public static void hidePlacement(String placementName){
		Log.d(TAG, String.format("hidePlacement { placementName : %s }", placementName));
		Playnomics.hidePlacement(placementName);
	}

	public static void fetchUserSegmentIds(){
		Log.d(TAG, "fetchUserSegmentIds");	
		Playnomics.fetchUserSegmentIds(segmentationDelegate);
	}

	public static void setUserGender(String gender){
		Log.d(TAG, "setUserGender");	
		Playnomics.setUserGender(gender);
	}

	public static void setUserBirthYear(int year){
		Log.d(TAG, "setUserBirthYear");	
		Playnomics.setUserBirthYear(year);
	}

	//NOTE: this method is strictly for debugging
	public static void toastMessage(final String message){
		Log.d(TAG, "toastMessage " + message);
		if(com.unity3d.player.UnityPlayer.currentActivity != null){
			com.unity3d.player.UnityPlayer.currentActivity.runOnUiThread(new Runnable(){
				public void run() {
					Context context = com.unity3d.player.UnityPlayer.currentActivity.getApplicationContext();
					int duration = Toast.LENGTH_LONG;
			
					Toast toast = Toast.makeText(context, message, duration);
					toast.show();
				}
			});
		}
	}

	public static void setLogLevel(int level){
		if(level == LogLevel.VERBOSE.level()){
			Playnomics.setLogLevel(LogLevel.VERBOSE);
		} else if(level == LogLevel.DEBUG.level()){
			Playnomics.setLogLevel(LogLevel.DEBUG);
		} else if(level == LogLevel.WARNING.level()){
			Playnomics.setLogLevel(LogLevel.WARNING);
		} else if(level == LogLevel.ERROR.level()){
			Playnomics.setLogLevel(LogLevel.ERROR);
		} else if(level == LogLevel.NONE.level()){
			Playnomics.setLogLevel(LogLevel.NONE);
		}
	}
}