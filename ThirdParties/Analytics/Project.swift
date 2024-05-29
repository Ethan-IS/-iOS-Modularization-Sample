//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Chang Woo Son on 5/22/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.thirdParty(
    name: ThirdParty.analytics.rawValue,
    deploymentTargets: .iOS("17.0"),
    dependencies: [
        .external(name: "FirebaseAnalyticsSwift")
    ]
)
