//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers


let project = Project.core(
    name: Core.network.rawValue,
    deploymentTargets: .iOS("17.0")
)
