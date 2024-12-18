//
//  SwiftUI+Utils.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import SwiftUI
import UIKit
import Combine

extension View {
    /// 隐藏键盘
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    /// 键盘高度监听
    var keyboardHeightPublisher: AnyPublisher<CGFloat, Never> {
        Publishers.Merge(
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
                .map { notification in
                    (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
                },
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
                .map { _ in 0 }
        ).eraseToAnyPublisher()
    }
    
    func transparentScrolling() -> some View {
        if #available(iOS 16.0, *) {
            return scrollContentBackground(.hidden)
        } else {
            return onAppear {
                UITextView.appearance().backgroundColor = .clear
            }
        }
    }
    
    /// 这个impactFeedback函数是用于在iOS应用中提供触觉反馈的。它使用了UIImpactFeedbackGenerator类，这是UIKit框架中用于生成物理冲击反馈的API。这种反馈可以模拟用户与物理对象交互时的感觉，比如敲击或按压，从而增强用户体验。
    /// - Parameter style: .light：轻触，模拟轻敲的反馈。.medium：中等，模拟中等力度敲击的反馈。.heavy：重击，模拟重击的反馈。
    func impactFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let impactMed = UIImpactFeedbackGenerator(style: style)
        impactMed.impactOccurred()
    }

}
