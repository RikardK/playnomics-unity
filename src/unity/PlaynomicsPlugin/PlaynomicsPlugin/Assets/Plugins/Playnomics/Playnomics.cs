using System;
using System.Runtime.InteropServices;
using System.Collections.Generic;
using UnityEngine;
using Play.LitJson;


public class Playnomics : MonoBehaviour
{
	private static bool initialized;
	private static GameObject playGameObject;

	private static readonly string androidShimClassName = "com.playnomics.android.unity.PlaynomicsShim";

	public static IPlaynomicsPlacementDelegate PlacementDelegate { get; set; }

	public static IPlaynomicsSegmentationDelegate SegmentationDelegate { get; set; }

	public enum LogLevel : int
	{
		VERBOSE 	= 0,
		DEBUG 		= 1,
		WARNING 	= 2,
		ERROR 		= 3,
		NONE 		= 4
	}

	#region iOS Marshal Functions
	[DllImport ("__Internal")]
	private static extern void PNStart(long application);
	[DllImport ("__Internal")]
	private static extern void PNStartWithUserId(long application, string userId);
	[DllImport ("__Internal")]
	private static extern void PNCustomEvent(string customEventName);
	[DllImport ("__Internal")]
	private static extern void PNTransactionInUSD(float price, int quantity);
	[DllImport ("__Internal")]
	private static extern void PNPreloadPlacement(string placementName);
	[DllImport ("__Internal")]
	private static extern void PNShowPlacement(string placementName);
	[DllImport ("__Internal")]
	private static extern void PNHidePlacement(string placementName);
	[DllImport ("__Internal")]
	private static extern void PNAttributeInstall(string source);
	[DllImport ("__Internal")]
	private static extern void PNAttributeInstallWithCampaign(string source, string campaign);
	[DllImport ("__Internal")]
	private static extern void PNAttributeInstallWithCampaignTime(string source, string campaign, long installTimeMilliseconds);
	[DllImport ("__Internal")]
	private static extern void PNStop();
	[DllImport ("__Internal")]
	private static extern void PNSetLogLevel(int logLevel);
	[DllImport ("__Internal")]
	private static extern void PNFetchUserSegmentIds();
	[DllImport ("__Internal")]
	private static extern void PNSetUserGender(string gender);
	[DllImport ("__Internal")]
	private static extern void PNSetUserBirthYear(int year);
	#endregion

	public static void StartSDK(long applicationId)
	{
#if UNITY_EDITOR
		Debug.Log("Called start. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var shimClass = new AndroidJavaClass(androidShimClassName))
		{
			shimClass.CallStatic("start", new object[1] { applicationId });
		}	
		InitializeGameObjects();
#elif UNITY_IPHONE
		PNStart(applicationId);
		InitializeGameObjects();
#endif
	}

	public static void StartSDK(long applicationId, string userId)
	{
#if UNITY_EDITOR
		Debug.Log("Called start. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var shimClass = new AndroidJavaClass(androidShimClassName))
		{
			shimClass.CallStatic("start", new object[2] { applicationId, userId });
		}
		
		InitializeGameObjects();
#elif UNITY_IPHONE
		PNStartWithUserId(applicationId, userId);
		InitializeGameObjects();
#endif
	}

	public static void SetLogLevel(LogLevel level)
	{
#if UNITY_EDITOR
		Debug.Log("Called SetLogLevel. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var shimClass = new AndroidJavaClass(androidShimClassName))
		{
			shimClass.CallStatic("setLogLevel", new object[1] { (int)level });
		}
#elif UNITY_IPHONE
		PNSetLogLevel((int)level);
#endif
	}

	private static void InitializeGameObjects()
	{
		if(!initialized)
		{
			playGameObject = new GameObject("Playnomics");
			playGameObject.AddComponent(typeof(Playnomics));
			//keep this game object around for all scenes
			DontDestroyOnLoad(playGameObject);
			initialized = true;
		}
	}

	public static void CustomEvent(string customEventName)
	{
#if UNITY_EDITOR
		Debug.Log("Called CustomEvent. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("customEvent", new object[1] { customEventName });
		}
#elif UNITY_IPHONE
		PNCustomEvent(customEventName);
#endif
	}

	public static void TransactionInUSD(float price, int quantity)
	{
#if UNITY_EDITOR
		Debug.Log("Called TransactionInUSD. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("transactionInUSD", new object[2] { price, quantity });
		}	
#elif UNITY_IPHONE
		PNTransactionInUSD(price, quantity);
#endif
	}

	public static void PreloadPlacements(params string[] placementNames)
	{
		if(placementNames.Length == 0){ return; }
#if UNITY_EDITOR
		Debug.Log("Called preloadPlacements. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			foreach(string placementName in placementNames)
			{
				sdkClass.CallStatic("preloadPlacement", placementName);
			}
		}
#elif UNITY_IPHONE
		foreach(string placementName in placementNames)
		{
			PNPreloadPlacement(placementName);
		}
#endif
	}

	public static void ShowPlacement(string placementName)
	{
#if UNITY_EDITOR
		Debug.Log("Called showPlacement. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var shimClass = new AndroidJavaClass(androidShimClassName))
		{
			shimClass.CallStatic("showPlacement", new object[1] { placementName });
		}
#elif UNITY_IPHONE
		PNShowPlacement(placementName);
#endif
	}

	public static void HidePlacement(string placementName)
	{
#if UNITY_EDITOR
		Debug.Log("Called HidePlacement. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("hidePlacement", new object[1] { placementName });
		}
#elif UNITY_IPHONE
		PNHidePlacement(placementName);
#endif
	}

	public static void AttributeInstall(string source)
	{
#if UNITY_EDITOR
		Debug.Log("Called AttributeInstall. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("attributeInstall", new object[1] { source });
		}
#elif UNITY_IPHONE
		PNAttributeInstall(source);
#endif
	}

	public static void AttributeInstall(string source, string campaign)
	{
#if UNITY_EDITOR
		Debug.Log("Called attributeInstall. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("attributeInstall", new object[2] { source, campaign });
		}
#elif UNITY_IPHONE
		PNAttributeInstallWithCampaign(source, campaign);
#endif
	}

	public static void AttributeInstall(string source, string campaign, DateTime installDateUtc)
	{
		//use epoch time in milliseconds as the representation for time, since this is more efficient
		DateTime epochTime = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
		long installTimeMilliseconds = (long)(installDateUtc.ToUniversalTime() - epochTime).TotalMilliseconds;
#if UNITY_EDITOR
		Debug.Log("Called attributeInstall. This method is only available when you build your game for Android or iOS.");
#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("attributeInstall", new object[3] { source, campaign, installTimeMilliseconds });
		}
#elif UNITY_IPHONE
		PNAttributeInstallWithCampaignTime(source, campaign, installTimeMilliseconds);
#endif
	}

	public static void FetchUserSegmentIds()
	{
		#if UNITY_EDITOR
		Debug.Log("Called FetchUserSegmentIds. This method is only available when you build your game for Android or iOS.");
		#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("fetchUserSegmentIds");
		}
		#elif UNITY_IPHONE
		PNFetchUserSegmentIds();
		#endif
	}

	public static void SetUserGender(string gender)
	{
		#if UNITY_EDITOR
		Debug.Log("Called SetUserGender. This method is only available when you build your game for Android or iOS.");
		#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("setUserGender", new object[1] { gender });
		}
		#elif UNITY_IPHONE
		PNSetUserGender(gender);
		#endif
	}

	public static void SetUserBirthYear(int year)
	{
		#if UNITY_EDITOR
		Debug.Log("Called SetUserBirthYear. This method is only available when you build your game for Android or iOS.");
		#elif UNITY_ANDROID
		using(var sdkClass = new AndroidJavaClass(androidShimClassName))
		{
			sdkClass.CallStatic("setUserBirthYear", new object[1] { year });
		}
		#elif UNITY_IPHONE
		PNSetUserBirthYear(year);
		#endif
	}

	public void OnApplicationQuit()
	{
#if UNITY_EDITOR
		Debug.Log("Application is shutting down.");
#elif UNITY_IPHONE
		PNStop();
#endif
	}

	#region Segmentation
	public void OnFetchedUserSegmentIds(string rawJsonData)
	{
		if (SegmentationDelegate == null)
			return;

		JsonData jsonData = null;
		if (rawJsonData!=null && rawJsonData.Length>0)
			jsonData = GetJsonData(rawJsonData);

		List<long> userSegmentsIds = null;
		if (jsonData != null)
		{
			JsonData segments = jsonData["segments"];
			if (segments!=null && segments.Count>0)
			{
				userSegmentsIds = new List<long>();
				for (int i=0; i<segments.Count; i++)
				{
					string svalue = (string)segments[i].ToString();
					long lvalue = 0;
					bool isConverted = long.TryParse(svalue, out lvalue);
					userSegmentsIds.Add(lvalue);
				}
			}
		}
		SegmentationDelegate.OnFetchedUserSegmentIds(userSegmentsIds);
	}

	public void OnFetchedUserSegmentIdsError(string rawJsonData)
	{
		if (SegmentationDelegate == null)
			return;

		JsonData jsonData = null;
		if (rawJsonData!=null && rawJsonData.Length>0)
			jsonData = GetJsonData(rawJsonData);

		string errorString = null;
		string description = null;
		if (jsonData != null)
		{
			errorString = jsonData["error"].ToString();
			description = jsonData["description"].ToString();
		}
		SegmentationDelegate.OnFetchedUserSegmentIdsError(errorString, description);
	}
	#endregion

	#region Placements
	public void OnShow(string rawJsonData)
   	{
       	if(PlacementDelegate != null)
       	{
			PlacementDelegate.OnShow(GetJsonData(rawJsonData));
		}
  	}

	public void OnClose(string rawJsonData)
    {
		if(PlacementDelegate != null)
       	{
			PlacementDelegate.OnClose(GetJsonData(rawJsonData));
		}
	}

	public void OnTouch(string rawJsonData)
	{
		if(PlacementDelegate != null)
		{
			PlacementDelegate.OnTouch(GetJsonData(rawJsonData));
		}
	}

	public void OnRenderFailed(string emptyMessage)
	{
		if(PlacementDelegate != null)
        {
			PlacementDelegate.OnRenderFailed();
		}
   	}

	private JsonData GetJsonData(string rawJsonData)
   	{
       	try
		{
			if(string.IsNullOrEmpty(rawJsonData)){ return null; }
			return JsonMapper.ToObject(rawJsonData);
		} 
		catch(Play.LitJson.JsonException jex){}
		catch(Exception ex){}
		return null;
   	}
	#endregion
}

