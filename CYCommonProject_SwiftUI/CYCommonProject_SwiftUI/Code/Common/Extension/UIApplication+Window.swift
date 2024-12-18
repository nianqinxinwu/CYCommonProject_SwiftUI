//
//  UIApplication+Window.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import UIKit

extension UIApplication {
    var keyWindow: UIWindow? {
        // 获取连接的场景
        return self.connectedScenes
        
            .filter{ $0.activationState == .foregroundActive }
            // Keep only the first `UIWindowScene`
            .first(where: { $0 is UIWindowScene })
            // Get its associated windows
            .flatMap({ $0 as? UIWindowScene })?.windows
            // Finally, keep only the key window
            .first(where: \.isKeyWindow)
    }
    
    /// 设备宽
    static let screenWidth = UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first {
            $0.isKeyWindow}?.screen.bounds.width ?? 0.0
    
    /// 设备高
    static let screenHeight =  UIApplication.shared.connectedScenes
        .flatMap {($0 as? UIWindowScene)?.windows ?? []}
        .first { $0.isKeyWindow }?.screen.bounds.height ?? 0.0
    /// 设备Bounds
    static let screenBounds =  UIApplication.shared.connectedScenes
        .flatMap {($0 as? UIWindowScene)?.windows ?? []}
        .first { $0.isKeyWindow }?.screen.bounds ?? .zero
    /// 安全区
    static let safeArea =  UIApplication.shared.connectedScenes
        .flatMap {($0 as? UIWindowScene)?.windows ?? []}
        .first { $0.isKeyWindow }?.safeAreaInsets ?? .zero
}
