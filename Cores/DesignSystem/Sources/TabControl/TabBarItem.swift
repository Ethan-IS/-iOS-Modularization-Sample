//
//  TabBarItem.swift
//  DesignSystem
//
//  Created by Chang Woo Son on 5/3/24.
//

import SwiftUI

struct TabBarItem<T: TabControllable>: View {
    @Environment(\.isSelected) private var isSelected
    
    var item: T
    var namespace: Namespace.ID
    
    var body: some View {
        VStack {
            Text(item.name)
                .bold()
                .foregroundColor(isSelected ? Color.primary : .secondary)
            
            Spacer()
            
            if isSelected {
                Color.green.frame(height: 2)
                    .matchedGeometryEffect(id: "underline", in: namespace, properties: .frame)
            } else {
                Color.clear.frame(height: 2)
            }
        }
    }
}

