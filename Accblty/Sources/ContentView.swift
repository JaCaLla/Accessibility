import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SuffContrastView()
                .tabItem {
                    Label("Sufficient Contrast", systemImage: "circle.lefthalf.filled")
                }
            DarkModeView()
                .tabItem {
                    Label("Dark Mode", systemImage: "lanyardcard")
                }
            LargerTextView()
                .tabItem {
                    Label("Larger Text", systemImage: "textformat.size")
                }
            DifferentiateColorView()
                .tabItem {
                    Label("Differentiate Color", systemImage: "circlebadge.2.fill")
                }
            ReducedMotionView()
                .tabItem {
                    Label("Reduced Motion", systemImage: "circle.dotted.and.circle")
                }
            VoiceControlView()
                .tabItem {
                    Label("Voice Control", systemImage: "circle.dotted.and.circle")
                }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
