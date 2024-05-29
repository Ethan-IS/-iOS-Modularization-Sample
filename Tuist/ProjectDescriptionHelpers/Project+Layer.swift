//
//  Project+Layer.swift
//  Packages
//
//  Created by Chang Woo Son on 5/21/24.
//

import ProjectDescription


public extension Project {
    static func layer(
        appName: String = "Modularization",
        name: String,
        product: Product = .staticLibrary,
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
                    product: product,
                    bundleId: "io.tuist.\(appName).\(name)",
                    deploymentTargets: deploymentTargets,
                    sources: ["Sources/**"],
                    dependencies:
                        dependencies +
                        [.external(name: "NeedleFoundation")]
                ),
                .target(
                    name: "\(name)Tests",
                    destinations: .iOS,
                    product: .unitTests,
                    bundleId: "io.tuist.\(appName).\(name)Tests",
                    infoPlist: .default,
                    sources: ["Tests/**"],
                    dependencies: [.xctest, .target(name: name)]
                )
            ]
        )
    }
}

