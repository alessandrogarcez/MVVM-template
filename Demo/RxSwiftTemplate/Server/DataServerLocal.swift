//
//  DataServerLocal.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 25/07/18.
//  Copyright © 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

struct DataServerLocal: DataServer {
    
    static func listCountries(completion: (([CountryListModule.Country]) -> ())) {
        
        let countries = [
            CountryListModule.Country(name: "Brazil", image: "brazil"),
            CountryListModule.Country(name: "South Africa", image: "south-africa"),
            CountryListModule.Country(name: "Italy", image: "italy"),
            CountryListModule.Country(name: "Japan", image: "japan"),
            CountryListModule.Country(name: "Argentina", image: "argentina"),
            CountryListModule.Country(name: "Ireland", image: "ireland"),
            CountryListModule.Country(name: "Egypt", image: "egypt"),
            CountryListModule.Country(name: "USA", image: "usa"),
            CountryListModule.Country(name: "United Kingdom", image: "united-kingdom"),
            CountryListModule.Country(name: "Wales", image: "wales"),
            CountryListModule.Country(name: "South Korea", image: "south-korea"),
            CountryListModule.Country(name: "Australia", image: "australia")
        ]
        
        completion(countries)
        
    }
    
}
