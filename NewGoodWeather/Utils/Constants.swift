//
//  Constants.swift
//  NewGoodWeather
//
//  Created by Lucia Rigoni Freire on 31/10/22.
//

import Foundation

struct Constants {
    
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=(API))&units=metric")!
        }
    }
}
