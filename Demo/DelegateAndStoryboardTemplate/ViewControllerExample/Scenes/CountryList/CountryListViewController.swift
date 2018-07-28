//
//  CountryListViewController.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 24/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import UIKit

private var cellIdentifier: String { return "UITableViewCell" }
private var sceneTitle: String { return "Countries" }

class CountryListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var interactor: CountryListInteractor?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.interactor?.provideInitialState()
    }

    private func setup(){
        title = sceneTitle
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
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
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else {
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


