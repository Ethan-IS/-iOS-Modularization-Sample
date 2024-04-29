//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

let project = Project(
    name: "Network",
    targets: [
        .target(
            name: "Network",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Network",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]
        )
    ]
)
