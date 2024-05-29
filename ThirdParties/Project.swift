//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/22/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "ThirdParties",
    targets: [
        .target(
            name: "ThirdParties",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.ThirdParties",
            sources: ["Sources/**"],
            resources: [],
            dependencies: [
                .thirdParty(implementation: .analytics),
                .thirdParty(interface: .analytics),
            ]
        )
    ]
)
