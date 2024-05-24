//
//  IcrementMiddleWare.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 21/05/2024.
//

import Foundation

func incrementMiddleWare() -> MiddleWare<AppState> {
  return { state, action, dispatch in
    if let _ = action as? IncrementActionAsync {
      DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        dispatch(IncrementAction())
      }
    }
  }
}
