//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import ComposableArchitecture

struct ___VARIABLE_sceneName___State: Equatable {
}

extension ___VARIABLE_sceneName___State {
    enum Action: Equatable {
    }
}

extension ___VARIABLE_sceneName___State {
    struct Environment {
        var mainQueue: AnySchedulerOf<DispatchQueue>
    }
}

extension ___VARIABLE_sceneName___State {
    static let reducer = Reducer<___VARIABLE_sceneName___State, ___VARIABLE_sceneName___State.Action, ___VARIABLE_sceneName___State.Environment> { state, action, environment in
        switch action {
        }
        
        return .none
    }
}
