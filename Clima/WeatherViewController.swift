//
//  ViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

extension Dictionary {
    
    var queryString: String? {
        var output: String = ""
        for (key,value) in self {
            if (output != "") {
                output += "&"
            }
            output +=  "\(key)=\(value)"
        }
        return output
    }
}
class WeatherViewController: UIViewController, CLLocationManagerDelegate, ChangeCityDelegate {
    
    //Constants
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "bc7257e6717f7146ef33c34d9c1cfb2a"
    

    //TODO: Declare instance variables here
    let locationManager = CLLocationManager()
    
    //Pre-linked IBOutlets
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    
    
    func getWeatherData( urlString: String, parameters: [String: String]) {
        let queryString = parameters.queryString
        
        guard let url = URL(string: urlString + "?" + queryString!) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)

        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            guard error == nil else {
                return
            }
            
            do {
                let weatherDataModel = try JSONDecoder().decode(WeatherDataModel.self, from: responseData)
                print(weatherDataModel)
                self.updateUIWithWeatherData(weatherDataModel: weatherDataModel)
            } catch {
                print("error trying to convert data to JSON")
                print(error)
                self.cityLabel.text = "No Weather Data"
            }
        }
        task.resume()
    }
    
    //MARK: - UI Updates
    /***************************************************************/
    
    
    //Write the updateUIWithWeatherData method here:
    
    func updateUIWithWeatherData(weatherDataModel : WeatherDataModel?) {
        DispatchQueue.main.async { [unowned self] in
            if let weatherData = weatherDataModel {
                self.cityLabel.text = weatherData.name
                self.temperatureLabel.text = String(Int(weatherData.main.temp - 273.15)) + "℃"
                self.weatherIcon.image = UIImage(named:weatherData.weatherIconName())
            }
        }
    }
    
    
    
    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here:
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            if location.horizontalAccuracy > 0 {
                locationManager.stopUpdatingLocation()
                locationManager.delegate = nil
                
                print("longitude = \(location.coordinate.longitude), latitude = \(location.coordinate.latitude)")
                
                let latitude = String(location.coordinate.latitude)
                let longitude = String(location.coordinate.longitude)
                
                let params : [String : String] = ["lat" : latitude, "lon": longitude, "appid": APP_ID]
                
                getWeatherData(urlString: WEATHER_URL, parameters: params)
            }
        }
    }
    
    
    //Write the didFailWithError method here:
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        cityLabel.text = "Location Unavailable"
    }
    
    

    
    //MARK: - Change City Delegate methods
    /***************************************************************/
    
    
    //Write the userEnteredANewCityName Delegate method here:
    func userEnteredANewCityName(city: String) {
        let params : [String: String] = ["q": city, "appid" : APP_ID]
        getWeatherData(urlString: WEATHER_URL, parameters: params)
    }

    
    //Write the PrepareForSegue Method here
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "changeCityName") {
            let desitinationVC = segue.destination as! ChangeCityViewController
            desitinationVC.delegate = self
        }
    }
    
    
    
}


