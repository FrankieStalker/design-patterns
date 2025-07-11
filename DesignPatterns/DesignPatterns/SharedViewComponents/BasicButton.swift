import SwiftUI

struct BasicButton: View {
    
    let buttonText: String
    let action: () -> Void
    
    init(buttonText: String, action: @escaping () -> Void) {
        self.buttonText = buttonText
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(buttonText)
        }
        .buttonStyle(BlueBorderButtonStyle())
    }
}

struct BlueBorderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .foregroundColor(.blue)
            .bold()
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.blue.opacity(0.3))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.blue, lineWidth: 2)
            )
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .padding(.horizontal)
    }
}
