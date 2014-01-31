using UnityEngine;
using System;
using System.Collections;

public class Integration : MonoBehaviour {

	// Use this for initialization
	void Start () {
#if UNITY_ANDROID
		//Android ID
		const long appId = 733674050111288021L;
#else
		//iOS ID
		const long appId = 930459816589800702L;
#endif
		//default level is ERROR
		Playnomics.SetLogLevel(Playnomics.LogLevel.VERBOSE);
		Playnomics.StartSDK(appId);
		Playnomics.PreloadPlacements("http", "ad", "noShow", "json", "nullTarget");
		Playnomics.PlacementDelegate = new PlacementDelegate();
	}

	// Update is called once per frame
	void Update() 
	{
	}

	void OnGUI()
	{
		GUI.depth = 2;

		int numberButtons = 8;

		float height = Screen.height/10;
		float width = Screen.width * 0.50f;
		
		float verticalPadding = 10;
		
		float x = (Screen.width - width)/2;
		float y = 0;

		if(GUI.Button(new Rect(x, y += (verticalPadding), width, height), "Attribute Install"))
		{
			string source = "source";
			string campaign = "campaign";
			DateTime installDate = DateTime.UtcNow;
			Playnomics.AttributeInstall(source, campaign, installDate);
		}
		
		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "Transaction"))
		{
			float price = 0.99f;
			int quantity = 1;
			Playnomics.TransactionInUSD(price, quantity);
		}
				
		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "App Start Milestone"))
		{
			Playnomics.CustomEvent("app start");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "HTTP"))
		{
			Playnomics.ShowPlacement("http");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "Ads"))
		{
			Playnomics.ShowPlacement("ad");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "Null Target"))
		{
			Playnomics.ShowPlacement("nullTarget");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "JSON"))
		{
			Playnomics.ShowPlacement("json");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "No Show"))
		{
			Playnomics.ShowPlacement("noShow");
		}
	}
}
