//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

protocol ___VARIABLE_sceneName___View: AnyObject {}

class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    // MARK: IBOutlets
    
    // @IBOutlet private weak var <#T##name#>: <#T##UILabel#>!
    
    
    // MARK: Rx
    
    let disposeBag = DisposeBag()
    lazy var outputPorts = (
    )
    
    
    // MARK: DI
    
    private var _presentation: ___VARIABLE_sceneName___Presentation?
    func inject(presentation: ___VARIABLE_sceneName___Presentation) {
        _presentation = presentation
    }
    
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - ___VARIABLE_sceneName___View
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___View {}
