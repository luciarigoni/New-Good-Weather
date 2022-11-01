//
//  String+Extensions.swift
//  NewGoodWeather
//
//  Created by Lucia Rigoni Freire on 31/10/22.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
