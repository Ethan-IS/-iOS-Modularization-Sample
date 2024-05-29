import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Modularization",
    targets: [
        .target(
            name: "Modularization",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Modularization",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .layers,
                .features,
                .cores,
                .utils,
                .thirdParties
            ]
        ),
        .target(
            name: "ModularizationTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ModularizationTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "Modularization")]
        ),
    ]
)
