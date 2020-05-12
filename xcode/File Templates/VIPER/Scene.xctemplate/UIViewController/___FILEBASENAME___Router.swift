//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit
import RxSwift
import RxCocoa

protocol ___VARIABLE_sceneName___Wireframe {}

class ___VARIABLE_sceneName___Router {

    private unowned let _viewController: UIViewController
    
    private init(viewController: UIViewController) {
        _viewController = viewController
    }

    
    static func buildUp() -> UIViewController {
        let view = ___VARIABLE_sceneName___ViewController()
        let router = ___VARIABLE_sceneName___Router(viewController: view)
        let presenter = ___VARIABLE_sceneName___Presenter(wireFrame: router, view: view)
        
        view.inject(presentation: presenter)
        return view
    }
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___Wireframe {}
