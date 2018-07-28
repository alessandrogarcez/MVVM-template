//
//  CountryListConfigurator.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 24/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

class CountryListConfigurator: NSObject{

    @IBOutlet weak var viewController: CountryListViewController?

    override func awakeFromNib(){
        super.awakeFromNib()
        let interactor = CountryListInteractor()
        viewController?.interactor = interactor
        interactor.delegate = viewController

        let router = CountryListRouter()
        router.viewController = viewController
        interactor.router = router
    }

}

