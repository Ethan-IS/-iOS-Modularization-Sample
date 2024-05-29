//
//  Project+Feature.swift
//  Packages
//
//  Created by Chang Woo Son on 5/21/24.
//

import ProjectDescription

public extension Project {
    static func feature(
        appName: String = "Modularization",
        name: String,
        deploymentTargets: DeploymentTargets,
        entitlements: Entitlements? = nil,
        dependencies: [TargetDependency] = [],
        presentationDependencies: [TargetDependency] = []
    ) -> Self {
        .init(
            name: name,
            targets: [
                // Interface
                .target(
                    name: "\(name)Interface",
                    destinations: .iOS,
                    product: .framework,
                    bundleId: "io.tuist.\(appName).\(name).interface",
                    deploymentTargets: deploymentTargets,
                    sources: ["Interfaces/**"],
                    dependencies: []
                ),
                // UI Layer
                .target(
                    name: "\(name)UI",
                    destinations: .iOS,
                    product: .framework,
                    bundleId: "io.tuist.\(appName).\(name)",
                    deploymentTargets: deploymentTargets,
                    sources: ["UISources/**"],
                    resources: ["Resources/**"],
                    dependencies:
                        dependencies +
                        [.external(name: "NeedleFoundation"), .target(name: "\(name)Interface"), .target(name: "\(name)Presentation")]
                ),
                // Presentation Layer
                .target(
                    name: "\(name)Presentation",
                    destinations: .iOS,
                    product: .staticLibrary,
                    bundleId: "io.tuist.\(appName).\(name).presentation",
                    deploymentTargets: deploymentTargets,
                    sources: ["PresentationSources/**"],
                    dependencies: presentationDependencies + [.layer(.domain)]
                ),
                // Testing
                .target(
                    name: "\(name)Testing",
                    destinations: .iOS,
                    product: .staticLibrary,
                    bundleId: "io.tuist.\(appName).\(name).testing",
                    sources: ["Testings/**"],
                    dependencies: [.target(name: "\(name)Interface")]
                ),
                // Test
                .target(
                    name: "\(name)Tests",
                    destinations: .iOS,
                    product: .unitTests,
                    bundleId: "io.tuist.\(appName).\(name)Tests",
                    infoPlist: .default,
                    sources: ["Tests/**"],
                    dependencies: [.xctest, .target(name: "\(name)Testing"), .target(name: "\(name)UI")]
                )
            ]
        )
    }
}
