package com.playnomics.android.unity;

import android.app.Activity;

import com.playnomics.android.sdk.IPlaynomicsPlacementRawDelegate;
import com.playnomics.android.sdk.Playnomics;


public class PlaynomicsShim {
	
	private static final Object syncLock = new Object();
	
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