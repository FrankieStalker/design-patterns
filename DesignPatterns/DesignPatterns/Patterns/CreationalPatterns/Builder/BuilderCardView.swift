import SwiftUI

struct BuilderCardView: View {
    
    private let config: CardConfig
    
    init(config: CardConfig) {
        self.config = config
    }
    
    var body: some View {
        cardContent
            .frame(maxWidth: .infinity, minHeight: 70, maxHeight: .infinity)
            .padding()
            .background(background)
            .foregroundStyle(foregroundColour)
            .padding(8)
    }
    
    private var cardContent: some View {
        HStack {
            text
            icon
        }
    }
    
    private var text: some View {
        VStack(alignment: .leading) {
            title
            subTitle
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    private var title: some View {
        if let title = config.title {
            Text(title)
        }
    }
    
    @ViewBuilder
    private var subTitle: some View {
        if let subTitle = config.subTitle {
            Text(subTitle)
        }
    }
    
    @ViewBuilder
    private var icon: some View {
        if let icon = config.icon {
            icon
        }
    }
    
    private var background: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(backgroundColour)
            .stroke(borderColour, lineWidth: 4)
    }
    
    private var backgroundColour: Color {
        config.backgroundColour ?? .white
    }
    
    private var foregroundColour: Color {
        config.foregroundColour ?? .black
    }
    
    private var borderColour: Color {
        config.borderColour ?? .black
    }
}
