using UnityEngine;
using System.Collections;
using Play.LitJson;
using System.Runtime.InteropServices;

public class PlacementDelegate : IPlaynomicsPlacementDelegate 
{
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
		var notification = new LocalNotification();
		notification.alertBody = message;
		NotificationServices.PresentLocalNotificationNow(notification);
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
		var notification = new LocalNotification();
		notification.alertBody = message;
		NotificationServices.PresentLocalNotificationNow(notification);
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
		var notification = new LocalNotification();
		notification.alertBody = message;
		NotificationServices.PresentLocalNotificationNow(notification);
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
		var notification = new LocalNotification();
		notification.alertBody = "Render Failed";
		NotificationServices.PresentLocalNotificationNow(notification);
		#endif
	}
}
