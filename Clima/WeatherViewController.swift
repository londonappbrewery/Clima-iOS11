//
//  ViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit



//TODO: Declare your Enum here



class WeatherViewController: UIViewController {
    
    //Constants
    let LOCATION_URL = "http://openweathermap.org/data/2.5/forecast"
    let CITY_URL = "http://api.openweathermap.org/data/2.5/weather?q=(name)&appid=bd82977b86bf27fb59a04b61b657fb6f"
    

    //TODO: Declare some variables here.
    

    
    //Pre-linked IBOutlets
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO:Set up the location manager here.
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TODO: Write the updateWeatherWithLocation method here:
    
    

    //TODO: Write the updateWeatherWithCityName method here:
    
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    

    
    
    
    
    
    //MARK: - JSON Parsing
    /***************************************************************/
   
    
    //Write the updateWeatherDataFromLocation method here:
    
    
    
    //Write the updateWeatherDataWithCityName method here:
    
    
    
    //MARK: - UI Updates
    /***************************************************************/
    
    //This method sets the status bar to white.
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    //Write the updateUIWithWeatherData method here:
    
    
    
    
    
    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here:
    
    
    
    //Write the didFailWithError method here:
    
    
    

    
    //MARK: - Change City Delegate methods
    /***************************************************************/
    
    
    //Write the userEnteredANewCityName Delegate method here:
    

    
    
    //Write the PrepareForSegue Method here
    
    
    
    
    
}


