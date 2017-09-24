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
