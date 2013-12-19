using UnityEngine;
using System;
using System.Collections;
using Playnomics.Unity;

public class Integration : MonoBehaviour {

	// Use this for initialization
	void Start () {
		const long appId = 733674050111288021L;
		PN.StartSDK(appId);
		PN.PreloadPlacements("http", "ad", "noShow", "json", "nullTarget");
		PN.PlacementDelegate = new PlacementDelegate();
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
			PN.AttributeInstall(source, campaign, installDate);
		}
		
		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "Transaction"))
		{
			float price = 0.99f;
			int quantity = 1;
			PN.TransactionInUSD(price, quantity);
		}
				
		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "App Start Milestone"))
		{
			PN.CustomEvent("app start");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "HTTP"))
		{
			PN.ShowPlacement("http");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "Ads"))
		{
			PN.ShowPlacement("ad");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "Null Target"))
		{
			PN.ShowPlacement("nullTarget");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "JSON"))
		{
			PN.ShowPlacement("json");
		}

		if(GUI.Button(new Rect(x, y += (verticalPadding + height), width, height), "No Show"))
		{
			PN.ShowPlacement("noShow");
		}
	}
}
