//
//  Project+ThirdParty.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/22/24.
//

import ProjectDescription


public extension Project {
    static func thirdParty(
        appName: String = "Modularization",
        name: String,
        deploymentTargets: DeploymentTargets,
        entitlements: Entitlements? = nil,
        dependencies: [TargetDependency] = []
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
                .target(
                    name: name,
                    destinations: .iOS,
                    product: .staticLibrary,
                    bundleId: "io.tuist.\(appName).\(name)",
                    deploymentTargets: deploymentTargets,
                    sources: ["Sources/**"],
                    dependencies:
                        dependencies + [.external(name: "NeedleFoundation"), .target(name: "\(name)Interface")]
                ),
                .target(
                    name: "\(name)Tests",
                    destinations: .iOS,
                    product: .unitTests,
                    bundleId: "io.tuist.\(appName).\(name)Tests",
                    infoPlist: .default,
                    sources: ["Tests/**"],
                    dependencies: dependencies + [.xctest, .target(name: name)]
                )
            ]
        )
    }
}


