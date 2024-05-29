//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Layers",
    targets: [
        .target(
            name: "Layers",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.Layers",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .layer(.data),
                .layer(.domain),
                .layer(.remote),
            ]
        )
    ]
)

