import SwiftUI

struct ContentView: View {
    
    @State var todos: [String] = []

    var body: some View {
        VStack {
            TodoInput(todoList: $todos)
            NavigationView {
                Todos(todoList: $todos)
            }
            .navigationTitle("Todos: ")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
