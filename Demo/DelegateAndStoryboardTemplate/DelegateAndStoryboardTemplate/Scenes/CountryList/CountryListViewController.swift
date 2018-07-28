//
//  CountryListViewController.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 24/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import UIKit

class CountryListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var interactor: CountryListInteractor?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.interactor?.provideInitialState()
    }

    private func setup(){
        title = "Countries"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.dataSource = self
    }

}

extension CountryListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interactor?.countries.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let _interactor = interactor else {
            return UITableViewCell()
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell") else {
            return UITableViewCell()
        }
        
        let country = _interactor.countries[indexPath.row]
        
        cell.selectionStyle = .none
        cell.textLabel?.text = country.name
        cell.imageView?.image = UIImage(named: country.image)
        
        return cell
        
    }
    
}

extension CountryListViewController: CountryListInteractorDelegate {

    func reloadViewState(){
        tableView.reloadData()
    }

}


