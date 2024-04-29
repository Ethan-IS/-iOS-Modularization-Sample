//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

let project = Project(
    name: "Home",
    targets: [
        .target(
            name: "Home",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Home",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]
        )
    ]
)
