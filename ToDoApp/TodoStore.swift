//
//  TodoStore.swift
//  ToDoApp
//
//  Created by Fer Alvarado on 16/10/26.
//

import Foundation

@Observable
final class TodoStore {
    var todos: [Todo] = [
        Todo(title: "Todo 1", notes: "First TODO", isDone: false, createdAt: .now.addingTimeInterval(1)),
        Todo(title: "Todo 2", notes: "Second TODO", isDone: false, createdAt: .now.addingTimeInterval(2)),
        Todo(title: "Todo 3", notes: "Third TODO", isDone: true, createdAt: .now.addingTimeInterval(3)),
        Todo(title: "Todo 4", notes: "Fourth TODO", isDone: false, createdAt: .now.addingTimeInterval(4)),
    ]
    
    var progress: Double? {
        guard !todos.isEmpty else {
            return nil
        }
        
        let completedTodos = todos.count {
            $0.isDone
        }
        
        return Double(completedTodos) / Double(todos.count)
    }
}
