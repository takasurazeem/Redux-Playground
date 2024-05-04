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

func reducer(
  _ state: State,
  _ action: Action
) -> State {
  return state
}
