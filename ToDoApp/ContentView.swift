//
//  ContentView.swift
//  ToDoApp
//
//  Created by Fer Alvarado on 16/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var todoStore = TodoStore()
    var body: some View {
        TodoListView(todoStore: todoStore)
    }
}

#Preview {
    ContentView()
}
