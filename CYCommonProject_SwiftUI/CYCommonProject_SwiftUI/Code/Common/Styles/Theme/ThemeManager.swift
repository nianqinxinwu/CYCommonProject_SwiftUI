//
//  ThemeManager.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import SwiftUI
import Foundation

class ThemeManager: ObservableObject {
    static let shared = ThemeManager()

    @Published var currentTheme: Theme

    private init() {
        // 默认主题
        currentTheme = themes[ThemeType.red]!
    }

    func switchTheme(to themeType: ThemeType) {
        currentTheme = themes[themeType]!
    }

    private var themes: [ThemeType: Theme] = [
        .red: Theme(
            navigationBarBackgroundColor: Color.red,
            navigationBarFontColor: .white,
            primaryColor: Color.red,
            secondaryColor: Color.orange,
            buttonThemeColor: Color.red,
            borderThemeColor: Color.red.opacity(0.5),
            specialFontThemeColors: [Color.red, Color.orange],
            pageBackgroundColor: Color.white,
            secondaryPageBackgroundColor: Color(red: 1, green: 0.9, blue: 0.9),
            tabBarTintColor: Color.red
        ),
        .blue: Theme(
            navigationBarBackgroundColor: Color.blue,
            navigationBarFontColor: .white,
            primaryColor: Color.blue,
            secondaryColor: Color.orange,
            buttonThemeColor: Color.blue,
            borderThemeColor: Color.blue.opacity(0.5),
            specialFontThemeColors: [Color.blue, Color.orange],
            pageBackgroundColor: Color.white,
            secondaryPageBackgroundColor: Color(red: 0.9, green: 0.9, blue: 1),
            tabBarTintColor: Color.blue
        )
        // ... 为其他主题类型添加主题
    ]
}
