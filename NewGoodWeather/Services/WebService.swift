//
//  WebService.swift
//  NewGoodWeather
//
//  Created by Lucia Rigoni Freire on 31/10/22.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class Webservice {
    func load<T>(resourse: Resource<T>, completition: @escaping(T?) -> ()) {
        URLSession.shared.dataTask(with: resourse.url) { data, response, error in
           
            if let data = data {
                DispatchQueue.main.async {
                    completition(resourse.parse(data))
                }
            } else {
                completition(nil)
            }
        }.resume()
    }
}
