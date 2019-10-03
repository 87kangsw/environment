//___FILEHEADER___

import ReactorKit
import RxCocoa
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: Reactor {
    
    enum Action {
        // case <#case#>
    }
    
    enum Mutation {
        // case <#case#>
    }
    
    struct State {
        // <#fields#>
    }
    
    let initialState = State()
    
    /**
     init(modelType: ModelType) {
         self.initialState = State(modelType: ModelType)
         _ = self.state
     }
     */
    
    // MARK: Mutation
    func mutate(action: Action) -> Observable<Mutation> {
//        switch <#value#> {
//        case <#pattern#>:
//            <#code#>
//        }
        return .empty()
    }
    
    // MARK: Reduce
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
//        switch mutation {
//        case <#pattern#>:
//            <#code#>
//        }
        return state
    }
}
