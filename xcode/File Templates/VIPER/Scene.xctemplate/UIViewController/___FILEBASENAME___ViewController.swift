//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

protocol ___VARIABLE_sceneName___View: AnyObject {}

class ___VARIABLE_sceneName___ViewController: UIViewController {

    private var _presentation: ___VARIABLE_sceneName___Presentation?
    
    func inject(presentation: ___VARIABLE_sceneName___Presentation) {
        _presentation = presentation
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___View {}
