//
//  DataDelegate.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import Foundation

protocol DataDelegate: AnyObject {
    func fetchCurrentWeatherData(_ data: CurrentWeatherModel)
    func fetchFiveDaysForcastWeatherData(_ data: FiveDaysForcastModel)
}

class WeatherViewModel {
    weak var dataDelegate: DataDelegate?
    
    let currentWeatherService: CurrentWeatherService = CurrentWeatherService.sharedInstatce
    var CurrentWeatherData: CurrentWeatherModel?
    
    let fiveDaysForcastService: FiveDaysForcastService = FiveDaysForcastService.sharedInstatce
    var fiveDaysForcastData: FiveDaysForcastModel?
    
    func fetchCurrentData() {
        currentWeatherService.getCurrentWeatherData { [weak self] result in
            switch result {
            case .success(let currentData):
                DispatchQueue.main.async {
                    self?.dataDelegate?.fetchCurrentWeatherData(currentData)
                }
            case .failure(let error):
                print("The error is \(error)")
            }
        }
    }
    
    func fetchForcastData() {
        fiveDaysForcastService.getFiveDaysForcastWeatherData { [weak self] result in
            switch result {
            case .success(let fiveDaysData):
                DispatchQueue.main.async {
                    self?.dataDelegate?.fetchFiveDaysForcastWeatherData(fiveDaysData)
                }
            case.failure(let error):
                print(error)
            }
        }
    }
}
