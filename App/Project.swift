import ProjectDescription

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
                .project(target: "Features", path: .relativeToRoot("Features")),
                .project(target: "Cores", path: .relativeToRoot("Cores")),
                .project(target: "Data", path: .relativeToRoot("Data")),
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
