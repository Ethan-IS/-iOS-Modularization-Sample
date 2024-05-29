//
//  Tests.swift
//  DateUtilTests
//
//  Created by Chang Woo Son on 5/22/24.
//

import XCTest
import Foundation

@testable import DateUtil


final class DateUtilTests: XCTestCase {

    func test_now_is_today() {
        let util = DateUtil(date: Date.now)
        XCTAssertTrue(util.isToday)
    }

    func test_2023_is_not_today() {
        var components = DateComponents()
        components.year = 2023
        let date: Date = Calendar.current.date(from: components)!

        let util = DateUtil(date: date)
        XCTAssertFalse(util.isToday)
    }
}
