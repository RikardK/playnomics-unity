using System;
using UnityEngine;
using Playnomics.LitJson;

namespace PlaynomicsUnity
{
	public class Playnomics : MonoBehaviour
	{
		private static bool initialized;
		private static GameObject playGameObject;

		private static readonly string androidShimClassName = "com.playnomics.android.unity.PlaynomicsShim";
		private static readonly string androidPlaynomicsClassName = "com.playnomics.android.sdk.Playnomics";

		public static void StartSDK(long applicationId)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var shimClass = new AndroidJavaClass(androidShimClassName))
				{
					shimClass.CallStatic("startApplication", new object[1] { applicationId });
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
					shimClass.CallStatic("startApplication", new object[2] { applicationId, userId });
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
				playGameObject.AddComponent(typeof(Playnomics));
				//keep this game object around for all scenes
				DontDestroyOnLoad(playGameObject);
				initialized = true;
			}
		}

		public static void CustomEvent(string customEventName)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
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
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
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
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
				{
					sdkClass.CallStatic("preloadPlacements", placementNames);
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
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
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
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
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
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
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

		public static void AttributeInstall(string source, string campaign, DateTime installDate)
		{
			if(Application.platform == RuntimePlatform.Android)
			{
				using(var sdkClass = new AndroidJavaClass(androidPlaynomicsClassName))
				{
					sdkClass.CallStatic("attributeInstall", new object[3] { source, campaign, installDate });
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

		#region Placement Delegate
		public class PlacementEventArgs : EventArgs
		{
			public JsonData JSONData { get; private set; }
			
			public PlacementEventArgs(JsonData jsonData)
			{
				JSONData = jsonData;
			}
		}
		
		public delegate void OnShowPlacementHandler(object sender, PlacementEventArgs placementArgs);
		public static event OnShowPlacementHandler OnShowPlacement;
		
		public delegate void OnClosePlacementHandler(object sender, PlacementEventArgs placementArgs);
		public static event OnClosePlacementHandler OnClosePlacement;
		
		public delegate void OnTouchPlacementHandler(object sender, PlacementEventArgs placementArgs);
		public static event OnTouchPlacementHandler OnTouchPlacement;
		
		public delegate void OnRenderFailedPlacementHandler(object sender, EventArgs args);
		public static event OnRenderFailedPlacementHandler OnPlacementRenderFailed;

		public void OnShow(string rawJsonData)
		{
			if(OnShowPlacement != null)
			{
				OnShowPlacement(this, GetEventArgs(rawJsonData));
			}
		}
		
		public void OnClose(string rawJsonData)
		{
			if(OnClosePlacement != null)
			{
				OnClosePlacement(this, GetEventArgs(rawJsonData));
			}
		}
		
		public void OnTouch(string rawJsonData)
		{
			if(OnTouchPlacement != null)
			{
				OnTouchPlacement(this, GetEventArgs(rawJsonData));
			}
		}
		
		public void OnRenderFailed()
		{
			if(OnPlacementRenderFailed != null)
			{
				OnPlacementRenderFailed(this, null);
			}
		}
		
		private PlacementEventArgs GetEventArgs(string rawJsonData)
		{
			if(string.IsNullOrEmpty(rawJsonData)){ return null; }
			JsonData data = JsonMapper.ToObject(rawJsonData);
			return new PlacementEventArgs(data);
		}
		#endregion 
	}
}

