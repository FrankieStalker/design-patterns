struct DefaultTextFormatter: TextFormatter {
    func textFormatter(_ input: String) -> String {
        "\(input)."
    }
}
