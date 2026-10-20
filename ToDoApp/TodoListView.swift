//
//  TodoListView.swift
//  ToDoApp
//
//  Created by Fer Alvarado on 16/10/26.
//

import SwiftUI

struct TodoListView: View {
    let todoStore: TodoStore
    var body: some View {
        List(todoStore.todos) { todo in
            VStack(alignment: .leading) {
                Text(todo.title)
                    .font(.headline)
                Text(todo.summary)
                    .font(.caption)
            }
            
        }
    }
}

#Preview {
    TodoListView(todoStore: TodoStore())
}
