//
//  RandomGenerator.swift
//  CocoaPodTestFramework
//
//  Created by Azam Shaikh on 20/01/18.
//  Copyright © 2018 Azam Shaikh. All rights reserved.
//

import Foundation
//import CoreLocation
import Alamofire
import SwiftyJSON

@objc public class RandomGenerator: NSObject{
    
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "_"

    override public init(){
        super.init()
        
        //locationManager.delegate = self
        //locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        //locationManager.requestWhenInUseAuthorization()
        //locationManager.startUpdatingLocation()
        
    }
    
    @objc public func str() -> String{
        return UUID().uuidString
    }
    
    @objc public func intt_3() -> Int {
        return Int(arc4random())
    }
    
    public func anotherMethod() {
        print("nothing")
    }
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    
    func getWeatherData(url: String, parameters: [String: String]) {
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            if response.result.isSuccess {
                
                print("Success! Got the weather data")
                let weatherJSON : JSON = JSON(response.result.value!)
                
                
                print(weatherJSON)
                
                //self.updateWeatherData(json: weatherJSON)
                
            }
            else {
                print("Error \(String(describing: response.result.error))")
                //self.cityLabel.text = "Connection Issues"
            }
        }
        
    }
    
    //Write the userEnteredANewCityName Delegate method here:
    
    
    @objc public func userEnteredANewCityName1(_ city: String) {
        
        let params : [String : String] = ["q" : city, "appid" : APP_ID]
        
        getWeatherData(url: WEATHER_URL, parameters: params)
        
    }

}

