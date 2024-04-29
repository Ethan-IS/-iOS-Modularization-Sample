//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

let project = Project(
    name: "User",
    targets: [
        .target(
            name: "User",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.User",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]
        )
    ]
)

