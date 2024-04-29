//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

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
                .project(target: "Network", path: .relativeToRoot("Cores/Network")),
            ]
        )
    ]
)

