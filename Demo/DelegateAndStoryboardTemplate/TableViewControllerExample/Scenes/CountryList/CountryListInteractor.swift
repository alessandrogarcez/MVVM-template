//
//  CountryListInteractor.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 28/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

protocol CountryListInteractorDelegate: class {
    func reloadViewState()
}

class CountryListInteractor {

    weak var delegate: CountryListInteractorDelegate?
    var router: CountryListRouterInput?

    private(set) var countries: [CountryListModule.Country] = []
    
    func provideInitialState(){
        DataServerLocal.listCountries { countries in
            self.countries = countries
            delegate?.reloadViewState()
        }
    }

}
