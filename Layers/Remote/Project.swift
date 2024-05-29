//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.layer(
    name: Layer.remote.rawValue,
    deploymentTargets: .iOS("17.0"),
    dependencies: [
        .core(.network),
        .layer(.data)
    ]
)
