//
//  HomeDataSource.swift
//  Data
//
//  Created by Chang Woo Son on 5/4/24.
//

import Foundation


public protocol HomeDataSource {
    func home() async throws -> String
}
