package com.playnomics.android.unity;

import android.app.Dialog;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;

import com.google.android.gms.common.GooglePlayServicesUtil;
import com.playnomics.android.sdk.IGoogleCloudMessageConfig;
import com.playnomics.android.sdk.IPushNotificationDelegate;
import com.playnomics.android.sdk.Playnomics;
import com.unity3d.player.UnityPlayerActivity;

public class MainActivity
	extends UnityPlayerActivity 
	implements IGoogleCloudMessageConfig, IPushNotificationDelegate {

	private static boolean initialized = false;
	private final String DEFAULT_GCM_SENDER_ID = "SENDER_ID";
	private final String GCM_SENDER_ID_KEY = "com.playnomics.android.push.GCM_SENDER_ID";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		if(!initialized){
			initialized = true;
			
			String senderId = getSenderId();
			if(senderId != null){
				Playnomics.enablePushNotifications(this, this);
			}
		}
	}

	@Override
	protected void onResume() {
		Playnomics.onActivityResumed(this);
		super.onResume();
	}

	@Override
	protected void onPause() {
		Playnomics.onActivityPaused(this);
		super.onPause();
	}

	@Override
	public Class<?> getNotificationDestination() {
		return this.getClass();
	}

	@Override
	public int getNotificationIcon() {
		try{
			ApplicationInfo appInfo = getPackageManager().getApplicationInfo(getPackageName(), 0);
			return appInfo.icon;
		} catch (NameNotFoundException e) {
		}	
		return 0;
	}

	@Override
	public String getSenderId(){
		try {
			ApplicationInfo appInfo = getPackageManager().getApplicationInfo(getPackageName(), PackageManager.GET_META_DATA);
			Bundle bundle = appInfo.metaData;
		    if(bundle.containsKey(GCM_SENDER_ID_KEY)){
		    	String senderId = bundle.getString(GCM_SENDER_ID_KEY);
			    if(senderId == null || senderId.equals(DEFAULT_GCM_SENDER_ID)){
			    	return null;
			    }
			    return senderId;
		    }
		    return null;
		} catch (NameNotFoundException e) {
		}
		return null;
	}

	@Override
    public void onPushRegistrationSuccess(String registrationId) {
        Log.d(this.getClass().getName(), String.format("Registered device %s", registrationId));
    }

    @Override
    public void onPushRegistrationFailure() {
        Log.e(this.getClass().getName(), "Failed to register device");
    }

    @Override
    public void onPushRegistrationFailure(Exception ex) {
        Log.e(this.getClass().getName(), "Failed to register device", ex);
    }

    @Override
    public void onPushRegistrationFailure(int errorCode) {
        final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
        Log.e(this.getClass().getName(), "Failed to register device, GooglePlayServices is out of date");

        if (GooglePlayServicesUtil.isUserRecoverableError(errorCode)) {
            Dialog dialog = GooglePlayServicesUtil.getErrorDialog(errorCode, this,
                    PLAY_SERVICES_RESOLUTION_REQUEST);

            if(dialog != null){
                dialog.show();
            }
        }
    }
}