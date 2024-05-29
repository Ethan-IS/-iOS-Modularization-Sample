//
//  RootComponent.swift
//  Modularization
//
//  Created by Chang Woo Son on 5/22/24.
//

import SwiftUI

import NeedleFoundation

import Features

import Remote
import Data
import Domain

import AnalyticsInterface
import Analytics

final class RootComponent: BootstrapComponent {
    var rootView: some View {
        featureBuilder.homeBuilder.view
    }
}

// MARK: - Features
extension RootComponent {
    public var featureBuilder: FeatureBuilder {
        shared {
            FeatureComponent(parent: self)
        }
    }
}

// MARK: - Layers
extension RootComponent {
    public var useCaseBuilder: UseCaseBuilder {
        shared {
            UseCaseComponent(parent: self)
        }
    }

    public var repositoryBuilder: RepositoryBuilder {
        shared {
            RepositoryComponent(parent: self)
        }
    }

    public var remoteDataSourceBuilder: RemoteDataSourceBuilder {
        shared {
            RemoteDataSourceComponent(parent: self)
        }
    }
}

// MARK: ThirdParties
extension RootComponent {
    public var logBuilder: LogBuilder {
        shared {
            LogComponent(parent: self)
        }
    }
}
