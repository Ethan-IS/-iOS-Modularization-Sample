//
//  HomeRepository.swift
//  Domain
//
//  Created by Chang Woo Son on 5/4/24.
//

import Foundation


public protocol HomeRepository {
    func home() async throws -> String
}
