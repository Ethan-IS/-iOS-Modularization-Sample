//
//  SettingsViewModel.swift
//  SettingsPresentation
//
//  Created by Chang Woo Son on 5/3/24.
//

import Foundation
import Observation

import Domain

public protocol SettingsViewModelDependency {
}

@Observable
public final class SettingsViewModel {
    
    private let dependency: SettingsViewModelDependency

    public init(
        dependency: SettingsViewModelDependency
    ) {
        self.dependency = dependency
    }
}
