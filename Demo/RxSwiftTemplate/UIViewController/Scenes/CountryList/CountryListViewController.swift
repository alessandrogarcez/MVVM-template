//
//  CountryListViewController.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 28/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import UIKit

class CountryListViewController: UIViewController {

    var interactor: CountryListInteractor?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.interactor?.provideInitialState()
    }

    private func setup() {
        
    }

}

//MARK: - CountryListInteractorDelegate
extension CountryListViewController: CountryListInteractorDelegate {

    func reloadViewState() {
        
    }

}


