//
//  ThemeColor.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import Foundation
import UIKit
import SwiftUI

struct Theme {
    var navigationBarBackgroundColor: Color
    var navigationBarFontColor: Color
    var primaryColor: Color
    var secondaryColor: Color
    var buttonThemeColor: Color
    var borderThemeColor: Color
    var specialFontThemeColors: [Color] // 可扩展的多个字体颜色
    var pageBackgroundColor: Color
    var secondaryPageBackgroundColor: Color
    var tabBarTintColor: Color
}

/// 主题色枚举
enum ThemeType {
    case red,  blue //, orange, yellow, green, cyan, purple
}

