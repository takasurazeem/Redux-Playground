//
//  AppReducer.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 13/05/2024.
//

import Foundation


func appReducer(
  _ state: AppState,
  _ action: Action
) -> AppState {
  var state = state
  state.counterState = counterReducer(state.counterState, action)
  return state
}

