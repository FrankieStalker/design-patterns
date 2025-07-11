import SwiftUI

enum Route: Hashable {
    case abstractFactory
}

struct ContentView: View {
    @State private var path: [Route] = []
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Creational Patterns")) {
                    NavigationLink("Abstract Factory", value: Route.abstractFactory)
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .abstractFactory: AuthView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
