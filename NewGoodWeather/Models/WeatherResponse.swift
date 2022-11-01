//
//  WeatherResponse.swift
//  NewGoodWeather
//
//  Created by Lucia Rigoni Freire on 31/10/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
