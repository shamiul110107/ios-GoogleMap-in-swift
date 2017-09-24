# ios-GoogleMap-in-swift-3.0
Use Google Map Api to draw Marker and Path

To implement Google Map in iOS Project We have to Add Several components in our project and follow couple of steps.

1. Get the latest version of Xcode
2. Install the Google Map SDK
3. You can install using both Cocoapods and Manually
First we go through using Cocoapods

The Google Maps SDK for iOS is available as a CocoaPods pod. CocoaPods is an open source dependency manager for Swift and Objective-C Cocoa projects.
If you don't already have the CocoaPods tool, install it on macOS by running the following command from the terminal. For details, see the CocoaPods Getting Started guide.
sudo gem install cocoapods
Create a Podfile for the Google Maps SDK for iOS and use it to install the API and its dependencies:
1. If you don't have an Xcode project yet, create one now and save it to your local machine. (If you're new to iOS  development, create a Single View Application.)
2. Create a file named Podfile in your project directory. This file defines your project's dependencies.
3. Edit the Podfile and add your dependencies. Here is an example which includes the dependencies you need for the Google Maps SDK for iOS and Places API for iOS (optional):


source 'https://github.com/CocoaPods/Specs.git'

target 'YOUR_APPLICATION_TARGET_NAME_HERE' do
  pod 'GoogleMaps'
  pod 'GooglePlaces'
end

Now follow this couple of steps
1. Save the Podfile.
2. Open a terminal and go to the directory containing the Podfile: cd <path-to-project>
3. Run the pod install command. This will install the APIs specified in the Podfile, along with any dependencies they may have.
4. pod install
5. Close Xcode, and then open (double-click) your project's .xcworkspace file to launch Xcode. From this time onwards, you must use the .xcworkspace file to open the project.

Get an API key

If you want to use google map in your iOS application the you must have to create an API key from     Google API Console.
To create API key you have to follow some steps

1. Go to the Google API Console.
2. Create or select a project.
3. Click Continue to enable the Google Maps SDK for iOS.
4. On the Credentials page, get an API key. 
5. Note: If you have a key with iOS restrictions, you may use that key. You can use the same key with any of your iOS applications within the same project.
6. From the dialog displaying the API key, select Restrict key to set an iOS restriction on the API key.
7. In the Restrictions section, select iOS apps, then enter your app's bundle identifier. For example: com.example.hellomap.
8. Click Save.
9. Your new iOS-restricted API key appears in the list of API keys for your project. An API key is a string of characters, something like this:  AIzaSyBdVl-cTICSwYKrZ95SuvNw7dbMuDt1KG0

Add the API Key to your Application
* Add API key to your AppDelegate.swift file and import import GoogleMaps
* Add the following import statement:
import GoogleMaps
Add the following to your application(_:didFinishLaunchingWithOptions:) method, replacing YOUR_API_KEY with your API key:
GMSServices.provideAPIKey("YOUR_API_KEY")
If you are also using the Places API, add your key again as shown here:
GMSPlacesClient.provideAPIKey("YOUR_API_KEY")
