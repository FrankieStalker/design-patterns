import SwiftUI

struct BuilderView: View {
    
    let cardConfigs: [CardConfig] = [
        CardConfigBuilder()
            .cardId(.one)
            .title("Title")
            .subTitle("Subtitle")
            .icon(Image(systemName: "globe.americas.fill"))
            .backgroundColour(Color.blue)
            .foregroundColour(Color.white)
            .borderColour(Color.red)
            .create(),
        CardConfigBuilder()
            .cardId(.two)
            .subTitle("Subtitle")
            .icon(Image(systemName: "globe.asia.australia.fill"))
            .backgroundColour(Color.white)
            .foregroundColour(Color.blue)
            .borderColour(Color.brown)
            .create(),
        CardConfigBuilder()
            .cardId(.three)
            .title("Title")
            .icon(Image(systemName: "globe.europe.africa.fill"))
            .backgroundColour(Color.red)
            .foregroundColour(Color.yellow)
            .borderColour(Color.green)
            .create(),
        CardConfigBuilder()
            .cardId(.four)
            .title("Title")
            .subTitle("Subtitle")
            .icon(Image(systemName: "globe.central.south.asia.fill"))
            .create(),
    ]
    
    var body: some View {
        builderView
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private var title: Text {
        Text("Builder Pattern")
    }
    
    private var builderView: some View {
        ScrollView {
            ForEach(cardConfigs) { config in
                BuilderCardView(config: config)
            }
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal)
    }
}
