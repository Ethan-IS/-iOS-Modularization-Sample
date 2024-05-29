//
//  LogEvent.swift
//  Analytics
//
//  Created by Chang Woo Son on 5/22/24.
//


import FirebaseAnalytics

struct LogEvent {
    static let shared = LogEvent()

    private init() { }

    public func log(title: String) {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemID: "id-\(title)",
          AnalyticsParameterItemName: title,
          AnalyticsParameterContentType: "cont",
        ])
    }
}
