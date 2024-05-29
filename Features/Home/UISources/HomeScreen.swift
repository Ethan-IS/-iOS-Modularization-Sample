//
//  HomeScreen.swift
//  HomeUI
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

import HomePresentation
import AnalyticsInterface
import SettingsInterface

struct HomeScreen: View {

    private let viewModel: HomeViewModel
    private let logBuilder: LogBuilder
    private let settingsBuilder: SettingsBuilder

    init(
        viewModel: HomeViewModel,
        logBuilder: LogBuilder,
        settingsBuilder: SettingsBuilder
    ) {
        self.viewModel = viewModel
        self.logBuilder = logBuilder
        self.settingsBuilder = settingsBuilder
    }
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                settingsBuilder.view
            } label: {
                Text(viewModel.title)
                    .fontWeight(.heavy)
            }
        }
        .task {
            await viewModel.load()
            logBuilder.log(title: "TITLE-HOME")
        }
    }
}

