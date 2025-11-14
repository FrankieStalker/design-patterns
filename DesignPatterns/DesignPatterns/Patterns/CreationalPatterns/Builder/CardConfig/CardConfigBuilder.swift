import SwiftUI

struct CardConfigBuilder {
    private var cardId: CardId?
    private var title: String?
    private var subTitle: String?
    private var icon: Image?
    private var backgroundColour: Color?
    private var foregroundColour: Color?
    private var borderColour: Color?
    
    func cardId(_ cardId: CardId) -> Self {
        var copy = self
        copy.cardId = cardId
        return copy
    }
    
    func title(_ title: String) -> Self {
        var copy = self
        copy.title = title
        return copy
    }
    
    func subTitle(_ subTitle: String) -> Self {
        var copy = self
        copy.subTitle = subTitle
        return copy
    }
    
    func icon(_ icon: Image) -> Self {
        var copy = self
        copy.icon = icon
        return copy
    }
    
    func backgroundColour(_ backgroundColour: Color) -> Self {
        var copy = self
        copy.backgroundColour = backgroundColour
        return copy
    }
    
    func foregroundColour(_ foregroundColour: Color) -> Self {
        var copy = self
        copy.foregroundColour = foregroundColour
        return copy
    }
    
    func borderColour(_ borderColour: Color) -> Self {
        var copy = self
        copy.borderColour = borderColour
        return copy
    }
    
    func create() -> CardConfig {
        CardConfig(
            cardId: cardId,
            title: title,
            subTitle: subTitle,
            icon: icon,
            backgroundColour: backgroundColour,
            foregroundColour: foregroundColour,
            borderColour: borderColour
        )
    }
}
