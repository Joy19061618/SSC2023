import SwiftUI

@main
struct MyApp: App {
    
    var globalStore = GlobalStore()
    
    var body: some Scene {
        WindowGroup {
            Title()
                .environmentObject(globalStore)
        }
    }
}
