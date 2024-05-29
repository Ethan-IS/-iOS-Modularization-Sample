import SwiftUI

@main
struct ModularizationApp: App {

    private let rootComponent: RootComponent

    init() {
        registerProviderFactories()
        rootComponent = RootComponent()
    }

    var body: some Scene {
        WindowGroup {
            rootComponent.rootView
        }
    }
}
