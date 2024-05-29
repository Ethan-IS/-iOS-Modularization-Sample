// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        productTypes: [
            "NeedleFoundation" : .framework,
            "FirebaseAnalyticsSwift": .staticLibrary,
            "FirebaseCrashlytics": .staticLibrary,
        ]
    )
#endif

let package = Package(
    name: "Modularization",
    dependencies: [
        .package(url: "https://github.com/uber/needle", .upToNextMajor(from: "0.24.0")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", .upToNextMajor(from: "10.26.0")),
    ]
)
