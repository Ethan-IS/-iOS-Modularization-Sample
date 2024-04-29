//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

let project = Project(
    name: "Features",
    targets: [
        .target(
            name: "Features",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.Features",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Settings", path: .relativeToRoot("Features/Settings")),
                .project(target: "Home", path: .relativeToRoot("Features/Home")),
            ]
        )
    ]
)
