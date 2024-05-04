//
//  Store.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import Foundation

/// Global Store
class Store: ObservableObject {
  
  var reducer: Reducer
  @Published var state: State
  
  init(
    reducer: @escaping Reducer,
    state: State = State()
  ) {
    self.reducer = reducer
    self.state = state
  }
  
  func dispatch(action: Action) {
    state = reducer(state, action)
  }
}
