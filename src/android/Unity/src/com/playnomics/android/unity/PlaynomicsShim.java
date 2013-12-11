package com.playnomics.android.unity;

import com.playnomics.android.sdk.IPlaynomicsPlacementRawDelegate;
import com.playnomics.android.sdk.Playnomics;

/*
 * PlaynomicsShim is responsible for coordinating calls from the Unity SDK layer to the Android SDK
 * that require an Android activity. These calls are intended to be decoupled from the MainActivity.
 */
public class PlaynomicsShim {	
	private static IPlaynomicsPlacementRawDelegate delegate = new PlacementDelegate();
	
	public static void start(long applicationId, String userId){
		Playnomics.start(com.unity3d.player.UnityPlayer.currentActivity, applicationId, userId);
	}
	
	public static void start(long applicationId){
		Playnomics.start(com.unity3d.player.UnityPlayer.currentActivity, applicationId);
	}
	
	public static void showPlacement(String placementName){
		if(com.unity3d.player.UnityPlayer.currentActivity != null){
			Playnomics.showPlacement(placementName, com.unity3d.player.UnityPlayer.currentActivity, delegate);
		}
	}
}