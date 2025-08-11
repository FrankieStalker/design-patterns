import SwiftUI

enum AdapterAuthType {
    case facebook
    case x
    
    var name: String {
        switch self {
        case .facebook: "Facebook"
        case .x: "X"
        }
    }
    
    var logo: Image {
        switch self {
        case .facebook:
            Image("facebookLogo")
        case .x:
            Image("xLogo")
        }
    }
}
