//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

let project = Project(
    name: "Settings",
    targets: [
        .target(
            name: "Settings",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Settings",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]
        )
    ]
)
