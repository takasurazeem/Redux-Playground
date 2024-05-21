//
//  Store.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import Foundation

/// Global Store
class Store<StoreState: ReduxState>: ObservableObject {
  
  var reducer: Reducer<StoreState>
  @Published var state: StoreState
  var middleWares: [MiddleWare<StoreState>]
  
  init(
    reducer: @escaping Reducer<StoreState>,
    state: StoreState,
    middleWares: [MiddleWare<StoreState>] = []
  ) {
    self.reducer = reducer
    self.state = state
    self.middleWares = middleWares
  }
  
  func dispatch(action: Action) {
    DispatchQueue.main.async {
      self.state = self.reducer(self.state, action)
    }
    // run all middlewares
    middleWares.forEach { middleWare in
      middleWare(state, action, dispatch)
    }
  }
}
