//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import RxSwift
import RxRelay

protocol ___VARIABLE_sceneName___Presentation {}

class ___VARIABLE_sceneName___Presenter {
    
    // Rx
    
    private let disposeBag = DisposeBag()
    lazy var inputPorts = (
    )
    
    
    // Initializers
    
    private let _wireFrame: ___VARIABLE_sceneName___Wireframe
    private weak var _view: ___VARIABLE_sceneName___View?
    init(wireFrame: ___VARIABLE_sceneName___Wireframe, view: ___VARIABLE_sceneName___View) {
        _wireFrame = wireFrame
        _view = view
        
        bind()
    }
    
    
    // Functions
    
    func bind() {
    }
}

// MARK: - ___VARIABLE_sceneName___Presentation
extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Presentation {}
