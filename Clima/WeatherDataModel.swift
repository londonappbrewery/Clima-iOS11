//
//  WeatherDataModel.swift
//  WeatherApp
//
//  Created by Angela Yu on 24/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

//struct Clouds : Codable {
//    let all : Int?
//}

//struct Coord : Codable {
//    let lon : Double?
//    let lat : Double?
//}

struct Main : Codable {
    let temp : Double
    //    let pressure : Int?
    //    let humidity : Int?
    //    let temp_min : Double?
    //    let temp_max : Double?
}

//struct Sys : Codable {
//    let type : Int?
//    let id : Int?
//    let message : Double?
//    let country : String?
//    let sunrise : Int?
//    let sunset : Int?
//}

struct Weather : Codable {
    let id : Int
    let main : String?
    let description : String
    let icon : String
}

struct Wind : Codable {
    let speed : Double?
    let deg : Int?
}

struct WeatherDataModel : Codable {
//    let coord : Coord?
    let weather : [Weather]
    let base : String?
    let main : Main
    let visibility : Int?
//    let wind : Wind?
//    let clouds : Clouds?
    let dt : Int?
//    let sys : Sys?
    let id : Int?
    let name : String
    let cod : Int?
    
    //This method turns a condition code into the name of the weather condition image
    
    func weatherIconName() -> String {
        
    let condition : Int = self.weather[0].id
        
    switch (condition) {
    
        case 0...300 :
            return "tstorm1"
        
        case 301...500 :
            return "light_rain"
        
        case 501...600 :
            return "shower3"
        
        case 601...700 :
            return "snow4"
        
        case 701...771 :
            return "fog"
        
        case 772...799 :
            return "tstorm3"
        
        case 800 :
            return "sunny"
        
        case 801...804 :
            return "cloudy2"
        
        case 900...903, 905...1000  :
            return "tstorm3"
        
        case 903 :
            return "snow5"
        
        case 904 :
            return "sunny"
        
        default :
            return "dunno"
        }

    }
}
