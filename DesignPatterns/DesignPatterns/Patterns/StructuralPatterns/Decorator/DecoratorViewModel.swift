struct DecoratorViewModel {
    private let state: DecoratorViewState
    
    init(state: DecoratorViewState) {
        self.state = state
    }
    
    func formatText(with textFormatter: any TextFormatter = DefaultTextFormatter()) {
        state.output = textFormatter.textFormatter(state.text)
    }
}
