using UnityEngine;
using System.Collections;
using Playnomics.LitJson;
using System.Runtime.InteropServices;

public class PlacementDelegate : IPlaynomicsPlacementDelegate 
{
	[DllImport ("__Internal")]
	private static extern void PNDisplayUIAlert(string message);

	public void OnShow(JsonData rawData)
	{
		//just post the message to Android Activity
		string message = string.Format("OnShow {0}", rawData == null ? string.Empty : JsonMapper.ToJson(rawData));

#if UNITY_ANDROID && !UNITY_EDITOR
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { message });
		}
#elif UNITY_IPHONE  && !UNITY_EDITOR
		PNDisplayUIAlert(message);
#endif
	}
	
	public void OnTouch(JsonData rawData)
	{
		//just post the message to Android Activity
		string message = string.Format("OnTouch {0}", rawData == null ? string.Empty : JsonMapper.ToJson(rawData));
		#if UNITY_ANDROID && !UNITY_EDITOR
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { message });
		}
		#elif UNITY_IPHONE  && !UNITY_EDITOR
		PNDisplayUIAlert(message);
		#endif
	}
	
	public void OnClose(JsonData rawData)
	{
		//just post the message to Android Activity
		string message = string.Format("OnClose {0}", rawData == null ? string.Empty : JsonMapper.ToJson(rawData));
		#if UNITY_ANDROID && !UNITY_EDITOR
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { message });
		}
		#elif UNITY_IPHONE  && !UNITY_EDITOR
		PNDisplayUIAlert(message);
		#endif
	}
	
	public void OnRenderFailed()
	{
		#if UNITY_ANDROID && !UNITY_EDITOR
		using(var shimClass = new AndroidJavaClass("com.playnomics.android.unity.PlaynomicsShim"))
		{
			shimClass.CallStatic("toastMessage", new object[1] { "Render Failed" });
		}
		#elif UNITY_IPHONE  && !UNITY_EDITOR
		PNDisplayUIAlert("Render Failed");
		#endif
	}
}
