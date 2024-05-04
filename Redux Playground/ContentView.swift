//
//  ContentView.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var store: Store
  
  struct Props {
    let counter: Int
    let onIncrement: () -> Void
    let onDecrement: () -> Void
  }
  
  private func map(state: State) -> Props {
    Props(counter: state.counter) {
      store.dispatch(action: IncrementAction())
    } onDecrement: {
      store.dispatch(action: DecrementAction())
    }

  }
  
  var body: some View {
    let props = map(state: store.state)
    
    return VStack {
      Text("\(props.counter)")
      Button("Increment", action: props.onIncrement)
      Button("Decrement", action: props.onDecrement)
    }
    .padding()
  }
}

#Preview {
  let store = Store(reducer: reducer)
  return ContentView().environmentObject(store)
}
