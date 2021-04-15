//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI
import ComposableArchitecture

struct ___VARIABLE_sceneName___SceneBuilder {
    
    let store: Store<___VARIABLE_sceneName___State, ___VARIABLE_sceneName___State.Action>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            Text("___VARIABLE_sceneName___ Scene")
                .font(.title)
                .padding()
        }
    }
}

enum ___VARIABLE_sceneName___SceneBuilder {
    case production, mock
    
    var environment: ___VARIABLE_sceneName___State.Environment {
        let mainQueue = DispatchQueue.main.eraseToAnyScheduler()
        
        switch self {
        case .production:
            return .init(
                mainQueue: mainQueue
            )
        case .mock:
            return .init(
                mainQueue: mainQueue
            )
        }
    }
    
    func build() -> ___VARIABLE_sceneName___View {
        ___VARIABLE_sceneName___View(
            store: Store(
                initialState: ___VARIABLE_sceneName___State(),
                reducer: ___VARIABLE_sceneName___State.reducer,
                environment: environment
            )
        )
    }
}

