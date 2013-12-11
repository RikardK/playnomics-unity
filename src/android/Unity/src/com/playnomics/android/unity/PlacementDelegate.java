package com.playnomics.android.unity;

import com.playnomics.android.sdk.IPlaynomicsPlacementRawDelegate;
import com.unity3d.player.UnityPlayer;

public class PlacementDelegate implements IPlaynomicsPlacementRawDelegate {
	
	private final String GAME_OBEJECT_NAME = "com.playnomics.PlacementDelegate";

	@Override
	public void onClose(String rawJsonData) {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "onClose", rawJsonData);
	}

	@Override
	public void onRenderFailed() {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "onRenderFailed", null);
	}

	@Override
	public void onShow(String rawJsonData) {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "onShow", rawJsonData);
	}

	@Override
	public void onTouch(String rawJsonData) {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "onTouch", rawJsonData);
	}
}