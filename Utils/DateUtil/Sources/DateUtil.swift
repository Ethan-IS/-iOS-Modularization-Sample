//
//  DateUtil.swift
//  DateUtil
//
//  Created by Chang Woo Son on 5/22/24.
//

import Foundation


public final class DateUtil {

    var date: Date

    public init(date: Date) {
        self.date = date
    }
}

public extension DateUtil {
    var isToday: Bool {
        Calendar.current.isDateInToday(date)
    }
}
