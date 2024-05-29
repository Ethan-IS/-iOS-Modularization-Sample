//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/22/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.util(
    name: Util.extensions.rawValue,
    deploymentTargets: .iOS("17.0")
)
