//
//  HomeUseCase.swift
//  Domain
//
//  Created by Chang Woo Son on 5/4/24.
//

import Foundation

public struct HomeUseCase {

    private let repository: HomeRepository

    init(repository: HomeRepository) {
        self.repository = repository
    }
    
    public func callAsFunction() async throws -> String {
        try await repository.home()
    }
}
