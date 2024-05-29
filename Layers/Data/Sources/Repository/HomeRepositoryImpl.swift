//
//  HomeRepositoryImpl.swift
//  Data
//
//  Created by Chang Woo Son on 5/4/24.
//

import Foundation

import Domain

struct HomeRepositoryImpl: HomeRepository {


    private let dataSource: HomeDataSource

    init(dataSource: HomeDataSource) {
        self.dataSource = dataSource
    }

    func home() async throws -> String {
        try await dataSource.home()
    }
}
