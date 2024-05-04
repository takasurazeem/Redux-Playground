//
//  Reducer.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import Foundation

typealias Reducer = (_ state: State, _ action: Action) -> State

protocol Action {
  
}

struct IncrementAction: Action {
  
}

func reducer(
  _ state: State,
  _ action: Action
) -> State {
  var state = state
  
  switch action {
    case _ as IncrementAction:
      state.counter += 1
    default:
      break
  }
  
  return state
}
