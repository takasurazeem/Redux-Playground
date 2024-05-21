//
//  LoggingMiddleWare.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 21/05/2024.
//

import Foundation

func logMiddleWare() -> MiddleWare<AppState> {
  return { state, action, dispatch in
    print("LOG MIDDLEWARE")
  }
}
