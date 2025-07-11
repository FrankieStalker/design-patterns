import SwiftUI

struct AuthView: View {
    
    @State private var state = AuthViewState()
    
    var body: some View {
        VStack {
            content
        }
        .navigationTitle(title)
        .sheet(
            isPresented: $state.isPresentingAuthView,
            onDismiss: onSheetDismiss
        ) {
            if let view = state.view {
                AnyView(view)
                    .presentationDetents([.medium])
            }
        }
    }
    
    private var title: Text {
        Text("Abstract Factory")
    }
    
    private var content: some View {
        TabView {
            Tab("Teacher view", systemImage: "person.and.background.dotted") {
                TeacherView(state: $state)
            }
            Tab("Teacher view", systemImage: "graduationcap") {
                StudentView(state: $state)
            }
        }
        .padding(.horizontal)
    }
    
    private func onSheetDismiss() {
        state = AuthViewState()
    }
}
