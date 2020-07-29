import SwiftUI
import StoreKit

struct ContentView: View {
    @State private var showRecommended = true
    var body: some View {
Button("Show Recommended App") {
                    self.showRecommended.toggle()
                }.appStoreOverlay(isPresented: $showRecommended) {
                    SKOverlay.AppConfiguration(appIdentifier: "1466841314", position: .bottom)
                }
}
}
