//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

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
                .feature(interface: .home),
                .feature(ui: .home),
                .feature(interface: .settings),
                .feature(ui: .settings)
            ]
        )
    ]
)
