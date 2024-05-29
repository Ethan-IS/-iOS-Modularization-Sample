//
//  Tests.swift
//  AnalyticsInterface
//
//  Created by Chang Woo Son on 5/22/24.
//

import XCTest
import Foundation

@testable import Analytics


final class AnalyticsTests: XCTestCase {

    func test_log() {
        LogEvent.shared.log(title: "title")
    }
}
