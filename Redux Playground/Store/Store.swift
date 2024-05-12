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
  
  init(
    reducer: @escaping Reducer<StoreState>,
    state: StoreState
  ) {
    self.reducer = reducer
    self.state = state
  }
  
  func dispatch(action: Action) {
    state = reducer(state, action)
  }
}
