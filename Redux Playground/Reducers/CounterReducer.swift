//
//  CounterReducer.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 13/05/2024.
//

import Foundation

func counterReducer(
  _ state: State,
  _ action: Action
) -> State {
  var state = state
  
  switch action {
    case _ as IncrementAction:
      state.counter += 1
    case _ as DecrementAction:
      state.counter -= 1
    case let action as AddAction:
      state.counter += action.value
    default:
      break
  }
  
  return state
}
