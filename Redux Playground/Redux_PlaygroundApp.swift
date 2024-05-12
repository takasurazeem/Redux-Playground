//
//  Redux_PlaygroundApp.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import SwiftUI

@main
struct Redux_PlaygroundApp: App {
    var body: some Scene {
      
      let store = Store(reducer: appReducer, state: AppState())
      
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
