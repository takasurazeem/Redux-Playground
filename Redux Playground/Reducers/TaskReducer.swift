//
//  TaskReducer.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 13/05/2024.
//

import Foundation

func taskReducer(
  _ state: TaskState,
  _ action: Action
) -> TaskState {
  var state = state
  
  switch action {
    case let action as AddTaskAction:
      state.tasks.append(action.task)
    default:
      break
  }
  
  return state
}
