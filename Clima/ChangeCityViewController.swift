//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


//Write the protocol declartion here:



class ChangeCityViewController: UIViewController {
    
    //Declare the delegate variable here:

    
    //This is the pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button:
    @IBAction func getWeatherPressed(sender: AnyObject) {
        
        //Get the city name the user entered in the text field
        
        
        // If we have a delegate set, call the method userEnteredANewCityName
        
        
        //dismiss the Change City View Controller to go back to the WeatherViewController
        
        
    }
    
    

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
