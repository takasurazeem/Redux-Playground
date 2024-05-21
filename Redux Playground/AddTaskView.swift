//
//  AddTaskView.swift
//  Redux Playground
//
//  Created by Takasur Azeem on 20/05/2024.
//

import SwiftUI

struct AddTaskView: View {
  @EnvironmentObject var store: Store<AppState>
  @State private var name: String = ""
  
  struct Props {
    // props
    let tasks: [Task]
    
    // dispatch
    var onTaskAdded: (Task) -> Void
  }
  
  private func map(state: TaskState) -> Props {
    return Props(tasks: state.tasks) { task in
      store.dispatch(action: AddTaskAction(task: task))
    }
  }
  
  var body: some View {
    let props = map(state: store.state.taskState)
    return VStack {
      TextField("Enter Task", text: $name)
        .textFieldStyle(.roundedBorder)
      
      Button("Add") {
        let task = Task(title: name)
        props.onTaskAdded(task)
        
        name = ""
      }
      Spacer()
      List(props.tasks) { task in
        Text(task.title)
      }
    }
    .padding()
  }
}

#Preview {
  let store = Store(reducer: counterReducer, state: CounterState())
  return AddTaskView().environmentObject(store)
}
