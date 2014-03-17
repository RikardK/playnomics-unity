package com.playnomics.android.unity;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.playnomics.android.sdk.IPlaynomicsSegmentationDelegate;
import com.unity3d.player.UnityPlayer;
import android.util.Log;

public class SegmentationDelegate implements IPlaynomicsSegmentationDelegate {
	private final String GAME_OBEJECT_NAME = "Playnomics";

	private final String TAG = this.getClass().getSimpleName();

	@Override
	public void onFetchedUserSegmentIds(List<Long> segmentationIds) {
		//coalesce the rawJsonData value to an empty string,
		//otherwise unity will segfault
		String rawJsonData = null;
		try {
			JSONObject jsonObject = new JSONObject();
			if (segmentationIds!=null && segmentationIds.size()>0) {
				JSONArray jsonArray = new JSONArray(segmentationIds);
				jsonObject.put("segments", jsonArray);
			}
			rawJsonData = jsonObject.toString();
		} catch (JSONException e) {
			Log.d(TAG, "onFetchedUserSegmentIds JSONException");
		}
		rawJsonData = rawJsonData == null ? "" : rawJsonData;
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnFetchedUserSegmentIds", rawJsonData);
	}

	@Override
	public void onFetchedUserSegmentIdsError(String error, String description) {
		//coalesce the rawJsonData value to an empty string,
		//otherwise unity will segfault
		String rawJsonData = null;
		try {
			JSONObject jsonObject = new JSONObject();
			if (error!=null)
				jsonObject.put("error", error);
			if (description!=null)
				jsonObject.put("description", description);
			rawJsonData = jsonObject.toString();
		} catch (JSONException e) {
				//
		}
		rawJsonData = rawJsonData == null ? "" : rawJsonData;
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnFetchedUserSegmentIdsError", rawJsonData);
	}

}