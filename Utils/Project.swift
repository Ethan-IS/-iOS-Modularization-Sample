//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/22/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Utils",
    targets: [
        .target(
            name: "Utils",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.Utils",
            sources: ["Sources/**"],
            resources: [],
            dependencies: [
                .util(.dateUtil),
                .util(.extensions)
            ]
        )
    ]
)

