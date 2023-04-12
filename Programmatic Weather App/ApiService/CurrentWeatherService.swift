//
//  CurrentWeatherService.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import Foundation
import UIKit

enum UserError: Error {
    case NoDataAvailable
    case cannotProcessData
    case InvaildURL
}

struct CurrentWeatherService {
    
    static let sharedInstatce = CurrentWeatherService()
    
    let session = URLSession.shared
    
    let currentWeatherUrl = URL(string: Api.currentWeatherURL)
    
    func getCurrentWeatherData(completion: @escaping(Result<CurrentWeatherModel, UserError>) -> Void) {
        guard let urlString = currentWeatherUrl else {
            completion(.failure(.InvaildURL))
            return
        }
        
        let dataTask = session.dataTask(with: urlString){data, response, UserError in
            
            guard let data = data else {
                completion(.failure(.NoDataAvailable))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let currentData = try decoder.decode(CurrentWeatherModel.self, from: data)
                completion(.success(currentData))
                print(currentData)
            }
            catch {
                completion(.failure(.cannotProcessData))
            }
        }
        dataTask.resume()
    }
    private init () {}
}
