using UnityEngine;
using System.Collections;
using Playnomics.Unity;
using Playnomics.LitJson;

public class PlacementDelegate : IPlacementDelegate 
{

	public void OnShow(JsonData rawData)
	{
		//just post the message to Android Activity

		string message = string.Format("OnShow {0}", rawData == null ? string.Empty : JsonMapper.ToJson(rawData));
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { message });
		}
	}
	
	public void OnTouch(JsonData rawData)
	{
		//just post the message to Android Activity
		string message = string.Format("OnTouch {0}", rawData == null ? string.Empty : JsonMapper.ToJson(rawData));
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { message });
		}
	}
	
	public void OnClose(JsonData rawData)
	{
		//just post the message to Android Activity
		string message = string.Format("OnClose {0}", rawData == null ? string.Empty : JsonMapper.ToJson(rawData));
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { message });
		}
	}
	
	public void OnRenderFailed()
	{
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { "OnRenderFailed" });
		}	
	}
}
