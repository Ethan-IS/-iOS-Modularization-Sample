//
//  SwiftUIExtension.swift
//  Extensions
//
//  Created by Chang Woo Son on 5/22/24.
//

import SwiftUI


public enum HapticFeedback {
    case impact(UIImpactFeedbackGenerator.FeedbackStyle)
    case notification(UINotificationFeedbackGenerator.FeedbackType)
}

extension HapticFeedback {
    public func generate() {
        switch self {
        case let .impact(style):
            UIImpactFeedbackGenerator(style: style).impactOccurred()
        case let .notification(type):
            UINotificationFeedbackGenerator().notificationOccurred(type)
        }
    }
}

struct HapticModifier: ViewModifier {
    @Environment(\.isEnabled) var isEnabled

    let feedback: HapticFeedback

    func body(content: Content) -> some View {
        if isEnabled {
            content
                .simultaneousGesture(TapGesture().onEnded(feedback.generate))
        } else {
            content
        }
    }
}


extension View {
    public func hapticOnTap(_ feedback: HapticFeedback) -> some View {
        modifier(HapticModifier(feedback: feedback))
    }
}


public extension HapticFeedback {
    static let light = HapticFeedback.impact(.light)
    static let success = HapticFeedback.notification(.success)
    static let warning = HapticFeedback.notification(.warning)
    static let error = HapticFeedback.notification(.error)
}
