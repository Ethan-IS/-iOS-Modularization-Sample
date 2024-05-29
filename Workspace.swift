//
//  Workspace.swift
//  Packages
//
//  Created by Chang Woo Son on 4/29/24.
//

import ProjectDescription

let workspace = Workspace(
    name: "Modularization",
    projects: [
        "App",
        "Features/**",
        "Layers/**",
        "Cores/**",
        "ThirdParties/**",
        "Utils/**"
    ]
)
