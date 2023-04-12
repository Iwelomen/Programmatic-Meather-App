//
//  FiveDaysForcastService.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import Foundation
import UIKit


struct FiveDaysForcastService {
    
    static let sharedInstatce = FiveDaysForcastService()
    
    let session = URLSession.shared
    
    let fiveDaysForcastWeatherUrl = URL(string: Api.fiveDaysForecastWeatherURL)
    
    func getFiveDaysForcastWeatherData(completion: @escaping(Result<FiveDaysForcastModel, UserError>) -> Void) {
        guard let urlString = fiveDaysForcastWeatherUrl else {
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
                let forcastData = try decoder.decode(FiveDaysForcastModel.self, from: data)
                completion(.success(forcastData))
                print(forcastData)
            }
            catch {
                completion(.failure(.cannotProcessData))
            }
        }
        dataTask.resume()
    }
    private init () {}
}
