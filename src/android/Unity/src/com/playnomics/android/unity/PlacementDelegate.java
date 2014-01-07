package com.playnomics.android.unity;

import com.playnomics.android.sdk.IPlaynomicsPlacementRawDelegate;
import com.unity3d.player.UnityPlayer;

public class PlacementDelegate implements IPlaynomicsPlacementRawDelegate {
	private final String GAME_OBEJECT_NAME = "Playnomics";

	private final String TAG = this.getClass().getSimpleName();
	
	@Override
	public void onClose(String rawJsonData) {
		//coalesce the rawJsonData value to an empty string,
		//otherwise unity will segfault
		rawJsonData = rawJsonData == null ? "" : rawJsonData;
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnClose", rawJsonData);
	}

	@Override
	public void onRenderFailed() {
		//send an empty string, otherwise Unity will segfault
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnRenderFailed", "");
	}

	@Override
	public void onShow(String rawJsonData) {
		//coalesce the rawJsonData value to an empty string,
		//otherwise unity will segfault
		rawJsonData = rawJsonData == null ? "" : rawJsonData;
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnShow", rawJsonData);
	}

	@Override
	public void onTouch(String rawJsonData) {
		//coalesce the rawJsonData value to an empty string,
		//otherwise unity will segfault
		rawJsonData = rawJsonData == null ? "" : rawJsonData;
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnTouch", rawJsonData);
	}
}