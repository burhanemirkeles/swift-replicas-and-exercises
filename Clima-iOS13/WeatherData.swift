//
//  WeatherData.swift
//  Clima
//
//  Created by Emir Keles on 17.05.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation


struct WeatherData: Codable{
    let name: String
    let main: Main
    let weather: [Weather]
    let coord: Coord
    let id: Int
    let cod: Int
    let timezone: Int
    let sys: Sys
    let dt: Int
    let visibility: Int
}
struct Main:Codable{
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Double
    let humidity: Double
}
struct Weather:Codable{
    let id: Int
    let main: String
    let description: String
}
struct Coord: Codable{
    let lon: Double
    let lat: Double
}
struct Sys: Codable{
    let type: Int
    let id: Int
    let country: String
    let sunrise: Int
    let sunset: Int
}

