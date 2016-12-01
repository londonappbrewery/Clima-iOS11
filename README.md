# Clima
Learn to make iOS Apps | Project Stub | (Swift 3.0/Xcode 8) - Clima App

Download the starter project files as .zip and extract to your desktop. 

## Finished App
![Finished App](https://github.com/londonappbrewery/Images/blob/master/Clima.gif)

## Fix for Cocoapods v1.0.1 and below

```ruby
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
    end
  end
end
```

## Fix for App Transport Security Override

```XML
<key>NSLocationUsageDescription</key>
	<string>We need your location to obtain your current weather conditions</string>
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>We need your location to obtain your current weather conditions</string>
	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSExceptionDomains</key>
		<dict>
			<key>openweathermap.org</key>
			<dict>
				<key>NSIncludesSubdomains</key>
				<true/>
				<key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
				<true/>
			</dict>
		</dict>
	</dict>
```


Copyright 2016 London App Brewery
