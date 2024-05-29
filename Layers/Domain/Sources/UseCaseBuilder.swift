//
//  UseCaseBuilder.swift
//  Domain
//
//  Created by Chang Woo Son on 5/3/24.
//

import Foundation

import NeedleFoundation


public protocol UseCaseDependency: Dependency {
    var repositoryBuilder: RepositoryBuilder { get }
}

public protocol UseCaseBuilder {
    var homeUseCase: HomeUseCase { get }
}

public class UseCaseComponent: Component<UseCaseDependency>, UseCaseBuilder {

    public var homeUseCase: HomeUseCase {
        shared {
            HomeUseCase(repository: dependency.repositoryBuilder.homeRepository)
        }
    }
}

