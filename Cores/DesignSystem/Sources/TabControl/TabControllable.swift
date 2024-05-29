//
//  TabControllable.swift
//  DesignSystem
//
//  Created by Chang Woo Son on 5/3/24.
//

import Foundation


public protocol TabControllable: Identifiable, Hashable {
    var name: String { get }
}
