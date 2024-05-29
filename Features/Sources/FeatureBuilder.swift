//
//  FeatureBuilder.swift
//  Features
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

import NeedleFoundation

import HomeInterface
import HomeUI

import SettingsInterface
import SettingsUI


public protocol FeatureDependency: Dependency {

}

public protocol FeatureBuilder {
    var settingsBuilder: SettingsBuilder { get }
    var homeBuilder: HomeBuilder { get }
}

public class FeatureComponent: Component<FeatureDependency>, FeatureBuilder {
    
    public var homeBuilder: HomeBuilder {
        shared {
            HomeComponent(parent: self)
        }
    }

    public var settingsBuilder: SettingsBuilder {
        shared {
            SettingsComponent(parent: self)
        }
    }
}
