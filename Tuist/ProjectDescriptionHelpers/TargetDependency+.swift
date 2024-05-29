//
//  TargetDependency+.swift
//  Packages
//
//  Created by Chang Woo Son on 5/21/24.
//

import ProjectDescription

// MARK: - Feature

extension TargetDependency {
    private static func feature(target: String, moduleName: String) -> Self {
        .project(target: target, path: .relativeToRoot("Features/" + moduleName))
    }

    public static func feature(interface module: Feature) -> Self {
        .feature(target: module.rawValue + "Interface", moduleName: module.rawValue)
    }

    public static func feature(ui module: Feature) -> Self {
        .feature(target: module.rawValue + "UI", moduleName: module.rawValue)
    }

    public static func feature(testing module: Feature) -> Self {
        .feature(target: module.rawValue + "Testing", moduleName: module.rawValue)
    }

    public static var features: Self {
        .project(target: "Features", path: .relativeToRoot("Features"))
    }
}

// MARK: - Core

extension TargetDependency {
    private static func core(target: String, moduleName: String) -> Self {
        .project(target: target, path: .relativeToRoot("Cores/" + moduleName))
    }

    public static func core(_ module: Core) -> Self {
        .core(target: module.rawValue, moduleName: module.rawValue)
    }

    public static var cores: Self {
        .project(target: "Cores", path: .relativeToRoot("Cores"))
    }
}

// MARK: - Layer

extension TargetDependency {
    private static func layer(target: String, moduleName: String) -> Self {
        .project(target: target, path: .relativeToRoot("Layers/" + moduleName))
    }

    public static func layer(_ module: Layer) -> Self {
        .layer(target: module.rawValue, moduleName: module.rawValue)
    }

    public static var layers: Self {
        .project(target: "Layers", path: .relativeToRoot("Layers"))
    }
}

// MARK: - Utils

extension TargetDependency {
    private static func util(target: String, moduleName: String) -> Self {
        .project(target: target, path: .relativeToRoot("Utils/" + moduleName))
    }

    public static func util(_ module: Util) -> Self {
        .util(target: module.rawValue, moduleName: module.rawValue)
    }

    public static var utils: Self {
        .project(target: "Utils", path: .relativeToRoot("Utils"))
    }
}


// MARK: - ThirdParties

extension TargetDependency {
    private static func thirdParty(target: String, moduleName: String) -> Self {
        .project(target: target, path: .relativeToRoot("ThirdParties/" + moduleName))
    }

    public static func thirdParty(interface module: ThirdParty) -> Self {
        .thirdParty(target: module.rawValue + "Interface", moduleName: module.rawValue)
    }

    public static func thirdParty(implementation module: ThirdParty) -> Self {
        .thirdParty(target: module.rawValue, moduleName: module.rawValue)
    }

    public static var thirdParties: Self {
        .project(target: "ThirdParties", path: .relativeToRoot("ThirdParties"))
    }
}
