//
//  State.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import Foundation

protocol ReduxState { }

struct CounterState: ReduxState {
  var counter = 0
}

/// Global State
struct AppState: ReduxState {
  var counterState = CounterState()
  var taskState = TaskState()
}

struct TaskState: ReduxState {
  var tasks: [Task] = []
}
