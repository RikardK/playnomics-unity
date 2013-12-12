package com.playnomics.android.unity;

import com.playnomics.android.sdk.IPlaynomicsPlacementRawDelegate;
import com.unity3d.player.UnityPlayer;

public class PlacementDelegate implements IPlaynomicsPlacementRawDelegate {
	private final String GAME_OBEJECT_NAME = "Playnomics";

	@Override
	public void onClose(String rawJsonData) {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnClose", rawJsonData);
	}

	@Override
	public void onRenderFailed() {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnRenderFailed", null);
	}

	@Override
	public void onShow(String rawJsonData) {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnShow", rawJsonData);
	}

	@Override
	public void onTouch(String rawJsonData) {
		UnityPlayer.UnitySendMessage(GAME_OBEJECT_NAME, "OnTouch", rawJsonData);
	}
}