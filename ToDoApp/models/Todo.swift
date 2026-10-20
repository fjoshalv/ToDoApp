//
//  Todo.swift
//  ToDoApp
//
//  Created by Fer Alvarado on 16/10/26.
//

import Foundation
struct Todo: Identifiable, Hashable, Describable {
    var id: UUID = UUID()
    var title: String
    var notes: String
    var isDone: Bool
    var createdAt: Date = .now
}
