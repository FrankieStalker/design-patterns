import SwiftUI

enum CardId: String {
    case one, two, three, four
}

struct CardConfig: Identifiable {
    var id: CardId? { cardId }
    
    let cardId: CardId?
    let title: String?
    let subTitle: String?
    let icon: Image?
    let backgroundColour: Color?
    let foregroundColour: Color?
    let borderColour: Color?
}
