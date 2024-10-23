//
//  Todos.swift
//  TodoWi
//
//  Created by oualid sahnoun on 16/09/2024.
//

import SwiftUI

struct Todos: View {
    
    @Binding var todoList: [String]
    
    var body: some View {
        VStack {
            if todoList.isEmpty {
                VStack {
                    Spacer()
                    Text("Add Task To See It ")
                }
            }
            List {
                ForEach(todoList, id: \.self) { todo in
                    Text(todo)
                }
                .onDelete(perform: { indexSet in
                    todoList.remove(atOffsets: indexSet)
                })
            }
            .listStyle(.plain)
        }
    }
}
