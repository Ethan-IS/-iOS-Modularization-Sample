//
//  TabControl.swift
//  DesignSystem
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI


public struct TabControl<T: TabControllable>: View {
    @Binding var currentTab: T
    @Namespace var namespace
    
    let controlOptions: [T]
    
    public init(currentTab: Binding<T>, controlOptions: [T]) {
        self._currentTab = currentTab
        self.controlOptions = controlOptions
    }
    
    public var body: some View {
        contents
    }
}

// MARK: - Function
private extension TabControl {
    func onSelectTabItem(_ option: T) {
        currentTab = option
    }
}

// MARK: - Private UI
private extension TabControl {
    var contents: some View {
        HStack(spacing: 12) {
            ForEach(controlOptions) { option in
                Button(action: { onSelectTabItem(option) }) {
                    TabBarItem(
                        item: option,
                        namespace: namespace
                    )
                    .isSelected(option == currentTab)
                    .animation(.spring(), value: currentTab)
                }
            }
        }
        .frame(height: 34)
        .background(alignment: .bottom) {
            Color.secondary.frame(height: 2)
        }
    }
}
