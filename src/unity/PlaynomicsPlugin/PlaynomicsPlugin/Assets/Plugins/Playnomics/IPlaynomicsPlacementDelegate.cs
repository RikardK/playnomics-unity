// ------------------------------------------------------------------------------
//  <autogenerated>
//      This code was generated by a tool.
//      Mono Runtime Version: 4.0.30319.1
// 
//      Changes to this file may cause incorrect behavior and will be lost if 
//      the code is regenerated.
//  </autogenerated>
// ------------------------------------------------------------------------------
using System;
using Playnomics.LitJson;

public interface IPlaynomicsPlacementDelegate
{
	void OnShow(JsonData rawData);

	void OnTouch(JsonData rawData);

	void OnClose(JsonData rawData);

	void OnRenderFailed();
}
