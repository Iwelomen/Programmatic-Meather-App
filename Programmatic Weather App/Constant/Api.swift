//
//  Api.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import Foundation

struct Api {
    
    static let apiKey: String = "207fcd20c4fda3d4bc53105a7eacd83d"
    static let location: String = "London"
    
    static var currentWeatherURL = "https://api.openweathermap.org/data/2.5/weather?q=\(location)&appid=\(apiKey)&units=metric"
    
    static var fiveDaysForecastWeatherURL = "https://api.openweathermap.org/data/2.5/forecast?q=\(location)&appid=\(apiKey)&units=metric"
}
