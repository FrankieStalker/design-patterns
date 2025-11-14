import SwiftUI

struct OptionalTextField: View {
    let title: String
    @Binding var text: String?
    @Binding var isSecure: Bool
    
    init(
        title: String,
        text: Binding<String?>,
        isSecure: Binding<Bool> = .constant(false)
    ) {
        self.title = title
        self._text = text
        self._isSecure = isSecure
    }

    var body: some View {
        if !isSecure {
            TextField(title, text: Binding(
                get: { text ?? "" },
                set: { text = $0.isEmpty ? nil : $0 }
            ))
        } else {
            SecureField(title, text: Binding(
                get: { text ?? "" },
                set: { text = $0.isEmpty ? nil : $0 }
            ))
        }
    }
}

