//
//  ContentView.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 05/05/2024.
//

import SwiftUI

struct ContentView: View {
  @State private var isPresented: Bool = false
  @EnvironmentObject var store: Store<AppState>
  
  struct Props {
    let counter: Int
    let onIncrement: () -> Void
    let onDecrement: () -> Void
    let onAdd: (Int) -> Void
    let onIncrementAsync: () -> Void
  }
  
  private func map(state: CounterState) -> Props {
    Props(counter: state.counter) {
      store.dispatch(action: IncrementAction())
    } onDecrement: {
      store.dispatch(action: DecrementAction())
    } onAdd: {
      store.dispatch(action: AddAction(value: $0))
    } onIncrementAsync: {
      store.dispatch(action: IncrementActionAsync())
    }

  }
  
  var body: some View {
    let props = map(state: store.state.counterState)
    
    return VStack {
      Spacer()
      Text("\(props.counter)")
      Button("Increment", action: props.onIncrement)
      Button("Decrement", action: props.onDecrement)
      Button("Add") {
        props.onAdd(150)
      }
      Button("Increment Async", action: props.onIncrementAsync)
      
      Spacer()
      
      Button("Add Task") {
        isPresented = true
      }
      
      Spacer()
    }
    .sheet(isPresented: $isPresented) {
      AddTaskView()
        .environmentObject(store)
    }
  }
}

#Preview {
  let store = Store(reducer: counterReducer, state: CounterState())
  return ContentView().environmentObject(store)
}
