//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Cores",
    targets: [
        .target(
            name: "Cores",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.Cores",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .core(.network),
                .core(.designSystem)
            ]
        )
    ]
)

