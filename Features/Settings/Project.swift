//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers



let project = Project.feature(
    name: Feature.settings.rawValue,
    deploymentTargets: .iOS("17.0"),
    dependencies: [
        .core(.designSystem),
        .util(.extensions),
        .thirdParty(interface: .analytics)
    ]
)
