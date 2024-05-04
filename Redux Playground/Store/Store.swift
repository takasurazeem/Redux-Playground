//
//  Store.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import Foundation

/// Global Store
class Store {
  
  var reducer: Reducer
  var state: State
  
  init(
    reducer: @escaping Reducer,
    state: State = State()
  ) {
    self.reducer = reducer
    self.state = state
  }
  
}
