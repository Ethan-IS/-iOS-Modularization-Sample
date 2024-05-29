//
//  HomeViewModel.swift
//  HomePresentation
//
//  Created by Chang Woo Son on 5/3/24.
//

import Foundation
import Observation

import Domain
import DateUtil

public protocol HomeViewModelDependency {
    var homeUseCase: HomeUseCase { get }
}

@Observable
public final class HomeViewModel {
    public private(set) var title: String = ""

    private let dependency: HomeViewModelDependency
    private let dateUtil: DateUtil

    public init(
        dependency: HomeViewModelDependency
    ) {
        self.dependency = dependency
        self.dateUtil = DateUtil(date: Date.now)
    }
}

public extension HomeViewModel {
    @MainActor
    func load() async {
        do {
            let result = try await dependency.homeUseCase()
            self.title = "\(result) / \(dateUtil.isToday)"
        } catch {
            
        }
    }
}
