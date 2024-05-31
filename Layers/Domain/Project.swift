//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/21/24.
//

import ProjectDescription
import ProjectDescriptionHelpers


let project = Project.layer(
    name: Layer.domain.rawValue,
    product: .framework,
    deploymentTargets: .iOS("17.0")
)
