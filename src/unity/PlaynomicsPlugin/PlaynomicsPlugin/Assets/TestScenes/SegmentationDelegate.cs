using UnityEngine;
using System.Collections;
using Play.LitJson;
using System.Runtime.InteropServices;
using System.Collections.Generic;

public class SegmentationDelegate : IPlaynomicsSegmentationDelegate 
{
	private static string getListValue(List<long> list) {
		List<string> slist = new List<string>();
		foreach (long l in list) {
			slist.Add(l.ToString() + ",");
		}
		return string.Concat(slist.ToArray());
	}

	public void OnFetchedUserSegmentIds(List<long> userSegmentsIds)
	{
		string sval = userSegmentsIds == null ? "" : getListValue(userSegmentsIds);
		string message = string.Format("OnFetchedUserSegmentIds {0}", sval);
		//just post the message to Android Activity
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

	public void OnFetchedUserSegmentIdsError(string error, string description)
	{
		//just post the message to Android Activity
		string message = string.Format("OnFetchedUserSegmentIdsError {0}", error == null ? "" : error);
		
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

}
