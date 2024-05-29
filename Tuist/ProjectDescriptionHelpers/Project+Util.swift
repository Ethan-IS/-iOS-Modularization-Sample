//
//  Project+Util.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/22/24.
//

import ProjectDescription

public extension Project {
    static func util(
        appName: String = "Modularization",
        name: String,
        deploymentTargets: DeploymentTargets,
        entitlements: Entitlements? = nil,
        dependencies: [TargetDependency] = []
    ) -> Self {
        .init(
            name: name,
            targets: [
                .target(
                    name: name,
                    destinations: .iOS,
                    product: .framework,
                    bundleId: "io.tuist.\(appName).\(name)",
                    deploymentTargets: deploymentTargets,
                    sources: ["Sources/**"],
                    resources: [],
                    dependencies:
                        dependencies
                ),
                .target(
                    name: "\(name)Tests",
                    destinations: .iOS,
                    product: .unitTests,
                    bundleId: "io.tuist.\(appName).\(name)Tests",
                    infoPlist: .default,
                    sources: ["Tests/**"],
                    dependencies: dependencies  + [.xctest, .target(name: name)]
                )
            ]
        )
    }
}

