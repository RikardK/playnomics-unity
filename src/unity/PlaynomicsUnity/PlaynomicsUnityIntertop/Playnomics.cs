using System;
using UnityEngine;
using Playnomics.LitJson;

namespace Playnomics.Unity
{
	public class PN : MonoBehaviour
	{
		private static bool initialized;
		private static GameObject playGameObject;

		private static readonly string androidShimClassName = "com.playnomics.android.unity.PlaynomicsShim";

		public static IPlacementDelegate PlacementDelegate { get; set; }

		public static void StartSDK(long applicationId)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var shimClass = new AndroidJavaClass(androidShimClassName))
				{
					shimClass.CallStatic("start", new object[1] { applicationId });
				}	
				InitializeGameObjects();
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{

			}
			else
			{
				Debug.Log("Called start. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void StartSDK(long applicationId, string userId)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var shimClass = new AndroidJavaClass(androidShimClassName))
				{
					shimClass.CallStatic("start", new object[2] { applicationId, userId });
				}
				InitializeGameObjects();
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called start. This method is only available when you build your game for Android or iOS.");
			}
		}

		private static void InitializeGameObjects()
		{
			if(!initialized)
			{
				playGameObject = new GameObject("Playnomics");
				playGameObject.AddComponent(typeof(PN));
				//keep this game object around for all scenes
				DontDestroyOnLoad(playGameObject);
				initialized = true;
			}
		}

		public static void CustomEvent(string customEventName)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					sdkClass.CallStatic("customEvent", new object[1] { customEventName });
				}	
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called customEvent. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void TransactionInUSD(float price, int quantity)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					sdkClass.CallStatic("transactionInUSD", new object[2] { price, quantity });
				}	
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called transactionInUSD. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void PreloadPlacements(params string[] placementNames)
		{
			if(placementNames.Length == 0){ return; }

			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					foreach(String placementName in placementNames)
					{
						sdkClass.CallStatic("preloadPlacement", placementName);
					}
				}
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{

			}
			else
			{
				Debug.Log("Called preloadPlacements. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void ShowPlacement(string placementName)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var shimClass = new AndroidJavaClass(androidShimClassName))
				{
					shimClass.CallStatic("showPlacement", new object[1] { placementName });
				}
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called showPlacement. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void HidePlacement(string placementName)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					sdkClass.CallStatic("hidePlacement", new object[1] { placementName });
				}
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called hidePlacement. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void AttributeInstall(string source)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					sdkClass.CallStatic("attributeInstall", new object[1] { source });
				}
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called attributeInstall. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void AttributeInstall(string source, string campaign)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					sdkClass.CallStatic("attributeInstall", new object[2] { source, campaign });
				}
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called attributeInstall. This method is only available when you build your game for Android or iOS.");
			}
		}

		public static void AttributeInstall(string source, string campaign, DateTime installDateUtc)
		{
			//use epoch time in milliseconds as the representation for time, since this is more efficient
			DateTime epochTime = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
			long installTimeMilliseconds = (long)(installDateUtc.ToUniversalTime() - epochTime).TotalMilliseconds;

			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidShimClassName))
				{
					sdkClass.CallStatic("attributeInstall", new object[3] { source, campaign, installTimeMilliseconds });
				}
			}
			else if(Application.platform == RuntimePlatform.IPhonePlayer)
			{
				
			}
			else
			{
				Debug.Log("Called attributeInstall. This method is only available when you build your game for Android or iOS.");
			}
		}

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
			catch(Playnomics.LitJson.JsonException jex)
			{
			}
			catch(Exception ex)
			{
			}
			return null;
       	}
		#endregion
	}
}

