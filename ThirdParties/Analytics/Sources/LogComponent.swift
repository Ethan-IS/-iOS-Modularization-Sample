//
//  LogComponent.swift
//  AnalyticsInterface
//
//  Created by Chang Woo Son on 5/22/24.
//

import Foundation

import NeedleFoundation

import AnalyticsInterface


public protocol LogDependency: Dependency {

}

public class LogComponent: Component<LogDependency>, LogBuilder {

    var event: LogEvent {
        LogEvent.shared
    }

    public func log(title: String) {
        event.log(title: title)
    }
}
