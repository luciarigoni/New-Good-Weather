//
//  Double+Extensions.swift
//  NewGoodWeather
//
//  Created by Lucia Rigoni Freire on 31/10/22.
//

import Foundation

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}

