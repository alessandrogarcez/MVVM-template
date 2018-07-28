//
//  CountryListRouter.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 28/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

protocol CountryListRouterInput {
    func goToPreviousScreen()
}

class CountryListRouter: CountryListRouterInput {

    weak var viewController: CountryListViewController?

    func goToPreviousScreen(){
        viewController?.navigationController?.popViewController(animated: true)
    }

}

