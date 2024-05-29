//
//  Project.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers


let project = Project.feature(
    name: Feature.home.rawValue,
    deploymentTargets: .iOS("17.0"),
    dependencies: [
        .core(.designSystem),
        .thirdParty(interface: .analytics),
        .feature(interface: .settings)
    ],
    presentationDependencies: [
        .util(.dateUtil)
    ]
)
