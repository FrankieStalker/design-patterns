struct UpperCaseDecorator: TextFormatter {
    private let wrapped: TextFormatter
    
    init(wrapped: any TextFormatter = DefaultTextFormatter()) {
        self.wrapped = wrapped
    }
    
    func textFormatter(_ input: String) -> String {
        wrapped.textFormatter(input).uppercased()
    }
}
