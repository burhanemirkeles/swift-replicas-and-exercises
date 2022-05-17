//
//  WeatherManager.swift
//  Clima
//
//  Created by Emir Keles on 16.05.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate{
    func didUpdateWeather(_ weatherManager: WeatherManager, weather:WeatherModel)
    func didFailWithError(error: Error)
}
struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=5f65ddf70881c17b2d2c81e42c6958bd&units=metric"
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    func fetchWeather(lon: CLLocationDegrees,lat:CLLocationDegrees){
        let urlString = "\(weatherURL)&lat=\(lat)&lon=\(lon)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString:String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil{
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data{
                    if let weather = self.parseJSON(safeData){
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                    
                }
            }
            task.resume()
        }
    }
    func parseJSON(_ weatherData: Data)->WeatherModel?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            let weather = WeatherModel(conditionId: id, cityName: name, temprature: temp)
            print(weather.conditionName)
            print(weather.temperatureString)
            return weather
        }catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
   
}
