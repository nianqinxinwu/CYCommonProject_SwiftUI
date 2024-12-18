//
//  Styles.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import SwiftUI

/// 通过绘制Layer 方式设置视图圆角
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
