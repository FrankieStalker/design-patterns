import SwiftUI

enum Route: Hashable {
    case abstractFactory
    case adapter
    case chainOfResponsibility
}

struct ContentView: View {
    @State private var path: [Route] = []
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Creational Patterns")) {
                    NavigationLink("Abstract Factory", value: Route.abstractFactory)
                }
                Section(header: Text("Structural Patterns")) {
                    NavigationLink("Adapter", value: Route.adapter)
                }
                Section(header: Text("Behavioral Patterns")) {
                    NavigationLink("Chain of Responsibility", value: Route.chainOfResponsibility)
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .abstractFactory: AuthView()
                case .adapter: AdapterAuthView()
                case .chainOfResponsibility: CoRView()
                }
            }
            .navigationTitle(Text("Design Patterns"))
        }
    }
}

#Preview {
    ContentView()
}
