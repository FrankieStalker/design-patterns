import SwiftUI

protocol AuthViewProtocol: View {
    var viewModel: any AuthViewModel { get }
}
