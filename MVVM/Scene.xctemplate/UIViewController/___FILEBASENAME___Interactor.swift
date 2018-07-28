//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

//It's the viewController's input protocol
protocol ___VARIABLE_sceneName___InteractorDelegate: class{
    func reloadViewState()
}

class ___VARIABLE_sceneName___Interactor {

    weak var delegate: ___VARIABLE_sceneName___InteractorDelegate!
    var router: ___VARIABLE_sceneName___RouterInput!

    func provideInitialState(){
        //Do something here
    }

}
