//
//  SelectedStateKey.swift
//  DesignSystem
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

struct SelectedStateKey: EnvironmentKey {
    static var defaultValue: Bool = false
}

extension EnvironmentValues {
    public var isSelected: Bool {
        get { self[SelectedStateKey.self] }
        set { self[SelectedStateKey.self] = newValue }
    }
}

public extension View {
    func isSelected(_ value: Bool) -> some View {
        environment(\.isSelected, value)
    }
}
