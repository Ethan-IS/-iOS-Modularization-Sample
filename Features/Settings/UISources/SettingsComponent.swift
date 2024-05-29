//
//  SettingsComponent.swift
//  SettingsUI
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

import NeedleFoundation

import Domain
import SettingsInterface
import SettingsPresentation
import AnalyticsInterface


public protocol SettingsDependency: Dependency {
    var logBuilder: LogBuilder { get }
}

public class SettingsComponent: Component<SettingsDependency>, SettingsBuilder {

    struct Component: SettingsViewModelDependency {

    }

    public var view: AnyView {
        AnyView(
            SettingsScreen(
                viewModel: SettingsViewModel(
                    dependency: Component()
                ),
                logBuilder: dependency.logBuilder
            )
        )
    }
}
