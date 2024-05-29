//
//  SettingsScreen.swift
//  SettingsUI
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

import SettingsPresentation
import AnalyticsInterface
import Extensions

struct SettingsScreen: View {

    private let viewModel: SettingsViewModel
    private let logBuilder: LogBuilder

    init(
        viewModel: SettingsViewModel,
        logBuilder: LogBuilder
    ) {
        self.viewModel = viewModel
        self.logBuilder = logBuilder
    }
    
    var body: some View {
        Text("Settings")
            .onAppear {
                logBuilder.log(title: "Settings")
            }
            .hapticOnTap(.success)
    }
}
