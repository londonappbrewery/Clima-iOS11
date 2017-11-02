# Clima
Learn to make iOS Apps with [The App Brewery](https://www.appbrewery.co) 📱 | Project Stub | (Swift 4.0/Xcode 9) - Clima App

Beginner: Download the starter project files as .zip and extract the files to your desktop.

Pro: Git clone to your Xcode projects folder.

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


Copyright © The App Brewery

