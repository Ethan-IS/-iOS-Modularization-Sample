//
//  HomeDataSourceImpl.swift
//  Remote
//
//  Created by Chang Woo Son on 5/4/24.
//

import Foundation

import Network
import Data

struct HomeDataSourceImpl: HomeDataSource {
    func home() async throws -> String {
        "HOME"
    }
}

