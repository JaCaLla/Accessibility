import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SuffContrastView()
                .tabItem {
                    Label("Sufficient Contrast", systemImage: "circle.lefthalf.filled")
                }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
