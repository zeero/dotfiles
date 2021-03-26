//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI
import ComposableArchitecture

struct ___VARIABLE_sceneName___View: View {
    
    let store: Store<___VARIABLE_sceneName___State, ___VARIABLE_sceneName___State.Action>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            Text("___VARIABLE_sceneName___ Scene")
                .font(.title)
                .padding()
        }
    }
}

struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_sceneName___SceneBuilder.mock.build()
    }
}
