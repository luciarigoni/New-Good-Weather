//
//  AddWeatherCityViewController.swift
//  NewGoodWeather
//
//  Created by Lucia Rigoni Freire on 31/10/22.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    
    var delegate: AddWeatherDelegate?
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true,completion: nil)
            }
        }
        
       /* if let city = cityNameTextField.text {
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=5453efeef9c3196c4138dcd2f913711f&units=metric")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            
            Webservice().load(resourse: weatherResource) { result in
                
            }
        }*/
        
    }
    
    @IBAction func close () {
        self.dismiss(animated: true, completion: nil)
    }
}
