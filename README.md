# Clima
Learn to make iOS Apps | Project Stub | (Swift 2.0/Xcode 7) - Clima App

Download the starter project files as .zip and extract to your desktop. 

## Finished App
![Finished App](https://github.com/londonappbrewery/Images/blob/master/Clima.gif)

## Fix for Cocoapods v1.0.1 and below

    post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
    end
  end
end



Copyright 2015 London App Brewery
