Playnomics Unity SDK
=============================================

## Considerations for Cross-Platform Applications

If you want to deploy your application to multiple platforms (eg: iOS and Android), you'll need to create a separate Playnomics Applications in the control panel. Each application build will use a separate `<APPID>`.

Getting Started
===============

## Download and Installing the SDK

You can download the SDK from our [releases page](https://github.com/playnomics/playnomics-unity/releases).

The tar file contains a set files for using the PlayRM SDK with Android and iOS. The Plugin directory structure matches what Unity expects.

If you don't already have files in the Android and iOS folders, feel free to copy the folders as is into your project. You will only need to replace the `YOUR_PACKAGE` in the **AndroidManifest.xml** file with Bundle Indentifier for your application. This is same identifier used for Google Play Store.

If you already have existing plugins, we encourage you to look through the files to make ensure that aren't any conflicts.

When you're ready to build your game for Android, please review these [notes](https://github.com/playnomics/playnomics-unity/wiki/Android-Manifest-Setup).

## Starting a PlayRM Session

To start logging automatically tracking user engagement data, you need to first start a session. **No other SDK calls will work until you do this.**

In the first `Scene` of your game, start the PlayRM Session:

```csharp
using Playnomics.Unity;
public class Integration : MonoBehaviour {
    void Start () {
        const long appId = <APPID>L;
        PN.StartSDK(appId);
    }
}
```

You can either provide a dynamic `<USER-ID>` to identify each user:

```csharp
public void static StartSDK(long applicationId, string userId);
```

or have PlayRM, generate a *best-effort* unique-identifier for the user:

```csharp
public void static StartSDK(long applicationId);
```

If you do choose to provide a `<USER-ID>`, this value should be persistent, anonymized, and unique to each user. This is typically discerned dynamically when a user starts the application. Some potential implementations:

* An internal ID (such as a database auto-generated number).
* A hash of the user's email address.

**You cannot use the user's Facebook ID or any personally identifiable information (plain-text email, name, etc) for the `<USER-ID>`.**

Messaging Integration
=====================
This guide assumes you're already familiar with the concept of placements and messaging, and that you have all of the relevant `placements` setup for your application.

Once you have all of your placements created with their associated `<PLACEMENT-ID>`s, you can start the integration process.

## SDK Integration

We recommend that you preload all of your placements when your application loads, so that you can quickly show a placement when necessary:

```csharp
public static void PreloadPlacements(params string[] placementNames);
```

```csharp
using Playnomics.Unity;
public class Integration : MonoBehaviour {
    void Start () {
        const long appId = <APPID>L;
        PN.StartSDK(appId);
        PN.PreloadPlacements("appStart", "levelComplete");
    }
}
```

Then when you're ready, you can show the placement:

```csharp
public static void ShowPlacement(string placementName);
```

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>placementName</code></td>
            <td>string</td>
            <td>Unique identifier for the placement</td>
        </tr>
    </tbody>
</table>

Optionally, associate an implementation of the `IPlacementDelegate` interface, to process rich data callbacks. See [Using Rich Data Callbacks](#using-rich-data-callbacks) for more information.

```csharp
public static Property IPlacementDelegate { get; set; }
```

## Using Rich Data Callbacks

Using an implementation of `IPlacementDelegate` your application can receive notifications when a placement is:

* Is shown in the screen.
* Receives a touch event on the creative.
* Is dismissed by the user, when they press the close button.
* Can't be rendered in the view because of connectivity or other issues.

```csharp
using Playnomics.LitJson;
public interface IPlacementDelegate {
    void onShow(JsonData jsonData);

    void onTouch(JsonData jsonData);

    void onClose(JsonData jsonData);

    void onRenderFailed();
}
```

For each of these events, your delegate may also receive Rich Data that has been tied with this creative. Rich Data is a JSON message that you can associate with your message creative. In all cases, the `jsonData` value can be `null`.

The actual contents of your JSON message can be delayed until the time of the messaging campaign configuration. However, the structure of your message needs to be decided before you can process it in your application. See [example use-cases for rich data](#example-use-cases-for-rich-data) below.

## Validate Integration
After you've finished the installation, you should verify that your application is correctly integrated by checkout the integration verification section of your application page.

Using Android SDK v1.1.0+ you can register your device as a Test Device and validate your events on the self-check page for your application: **`https://controlpanel.playnomics.com/applications/<APPID>`**

To test your in-app campaigns, you can enter your device's Android ID and select which segments to fall into.  Optionally, you can opt to not select any segments to simply see your device's data flowing through the validator.

This page will update with events as they occur in real-time, with any errors flagged. 

We strongly recommend running the self-check validator before deploying your newly integrated application to production.

Full Integration
=================

<div class="outline">
    <ul>
        <li>
            <a href="#monetization">Monetization</a>
        </li>
        <li>
            <a href="#install-attribution">Install Attribution</a>
        </li>
        <li>
            <a href="#custom-event-tracking">Custom Event Tracking</a>
        </li>
        <li>
            <a href="#push-notifications">Push Notifications</a>
        </li>
        <li>
           <a href="https://github.com/playnomics/playnomics-android/wiki/Rich-Data-Callbacks">
               Rich Data Callbacks
           </a>
        </li>
        <li>
            <a href="#support-issues">Support Issues</a>
        </li>
        <li>
            <a href="#change-log">Change Log</a>
        </li>
    </ul>
</div>

## Monetization

PlayRM allows you to track monetization through in-app purchases denominated in real US dollars.

```csharp
public static void TransactionInUSD(float priceInUSD, int quantity);
```
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>priceInUSD</code></td>
            <td>float</td>
            <td>The price of the item in USD.</td>
        </tr>
        <tr>
            <td><code>quantity</code></td>
            <td>int</td>
            <td>
               The number of items being purchased at the price specified.
            </td>
        </tr>
    </tbody>
</table>


```csharp
float priceInUSD = 0.99f;
int quantity = 1;

PN.TransactionInUSD(priceInUSD, quantity);
```

## Install Attribution

PlayRM allows you track and segment based on the source of install attribution. You can track this at the level of a source like *AdMob* or *MoPub*, and optionally include a campaign and an install date. By default, PlayRM tracks the install date by the first day we started seeing engagement date for your user.

```csharp
public static void AttributeInstall(string source);

public static void AttributeInstall(string source, string campaign);

public static void AttributeInstall(string source, string campaign,
            DateTime installDateUtc);
```
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>source</code></td>
            <td>string</td>
            <td>The source of install.</td>
        </tr>
        <tr>
            <td><code>campaign</code></td>
            <td>string</td>
            <td>
               The campaign for this source.
            </td>
        </tr>
        <tr>
            <td><code>installDate</code></td>
            <td>DateTime</td>
            <td>
               The date this user installed your app.
            </td>
        </tr>
    </tbody>
</table>

```csharp
string source = "AdMob";
string campaign = "Holiday";
DateTime installDate = DateTime.UtcNow;
PN.AttributeInstall(source, campaign, installDate);
```

## Custom Event Tracking

Custom events may be defined in a number of ways.  They may be defined at certain key gameplay points like, finishing a tutorial, or may they refer to other important events in a user's lifecycle. Users can be segmented based on when and how many times they have achieved a particular event.

Each time a user reaches a event, track it with this call:

```csharp
public static void CustomEvent(string customEventName);
```
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>customEventName</code></td>
            <td>string</td>
            <td>
                A name to describe your event.
            </td>
        </tr>
    </tbody>
</table>

Example client-side calls for a user reaching a event, with generated IDs:

```csharp
string eventName = "level 1 complete";
PN.CustomEvent(eventName);
```

Push Notifications
==================

We currently support push notifications for iOS and Android via Google Cloud Messaging.

Please review the respective wiki pages for Android and iOS to setup your application for push notifications.

Support Issues
==============
If you have any questions or issues, please contact <a href="mailto:support@playnomics.com">support@playnomics.com</a>.

Change Log
==========

#### Version 1.1.1
* Bug fix session needs to be reset after significant session downtime

#### Version 1.1.0
* Support for Push Notifications for Google Cloud Messaging
* `setTestMode` has been marked as deprecated. We now support test devices for validating and testing integrations.

#### Version 1.0.0
* Support for 3rd party html-based advertisements
* Support for simplified, fullscreen placements and internal messaging creatives
* Support for custom events
* A greatly simplified interface and API
* More robust error and exception handling
* Performance improvements, including background event queueing and better support for offline-mode
* Version number reset

#### Version 3.1
* Added support for Messaging with Rich Data Callbacks.

#### Version 3.0.1
* Bug fixes for reporting the device ID
* Performance improvements

#### Version 3
* Support for internal messaging
* Added milestone module

#### Version 2
* First release

View version <a href="https://github.com/playnomics/android-sdk/tags">tags</a>. View [releases](https://github.com/playnomics/playnomics-android/releases).
