//
//  Reducer.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import Foundation

typealias Reducer<State: ReduxState> = (_ state: State, _ action: Action) -> State

protocol Action {
  
}

struct IncrementAction: Action { }

struct DecrementAction: Action { }

struct AddAction: Action {
  let value: Int
}

struct AddTaskAction: Action {
  let task: Task
}
