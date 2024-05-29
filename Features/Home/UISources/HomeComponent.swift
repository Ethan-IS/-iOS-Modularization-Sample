//
//  HomeComponent.swift
//  HomeUI
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

import NeedleFoundation

import Domain
import HomeInterface
import HomePresentation
import SettingsInterface
import AnalyticsInterface


public protocol HomeDependency: Dependency {
    var settingsBuilder: SettingsBuilder { get }
    var useCaseBuilder: UseCaseBuilder { get }
    var logBuilder: LogBuilder { get }
}

public class HomeComponent: Component<HomeDependency>, HomeBuilder {

    struct Component: HomeViewModelDependency {
        var homeUseCase: HomeUseCase
    }
    
    public var view: AnyView {
        AnyView(
            HomeScreen(
                viewModel: HomeViewModel(
                    dependency: Component(
                        homeUseCase: dependency.useCaseBuilder.homeUseCase)
                ),
                logBuilder: dependency.logBuilder,
                settingsBuilder: dependency.settingsBuilder
            )
        )
    }
}
