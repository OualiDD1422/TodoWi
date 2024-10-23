//
//  TodoInput.swift
//  TodoWi
//
//  Created by oualid sahnoun on 16/09/2024.
//

import SwiftUI

struct TodoInput: View {
    
    @State var inputValue: String = ""
    @Binding var todoList: [String]
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            TextField("Write your task...", text: $inputValue)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(Color("FieldLightGray"))
                .cornerRadius(8)
                .padding(.horizontal)
        
            Button(action: {
                if !inputValue.isEmpty {
                    todoList.append(inputValue)
                    inputValue = "" 
                }
            }, label: {Text("Add")})
            .disabled(inputValue.isEmpty ? true: false)
        }
    }
}
