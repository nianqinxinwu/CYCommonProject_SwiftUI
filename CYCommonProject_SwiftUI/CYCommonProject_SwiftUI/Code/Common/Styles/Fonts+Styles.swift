//
//  Fonts+Styles.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import UIKit
import SwiftUI

// MARK: - Fonts - Not used in this project

internal enum Fonts: CaseIterable {
   
    // MARK: Fonts
    
    case dorrisBold
    case manropeRegular
    
    // MARK: Helpers
    
//    internal var fontName: String {
//        switch self {
//        case .manropeRegular:
//            return "Manrope-Regular"
//        case .dorrisBold:
//            return "Dorris-UltraBold"
//        }
//    }
}

// MARK: - Font Extension

public extension Font {
    
//    /// - Parameter size: Size to return font for
//    static func manropeRegular(size: CGFloat) -> Font {
//        return custom(Fonts.manropeRegular.fontName, size: size)
//    }
//
//    /// - Parameter size: Size to return font for
//    static func dorrisBold(size: CGFloat) -> Font {
//        return custom(Fonts.dorrisBold.fontName, size: size)
//    }
}

extension UIFont {
    
    // MARK: - OLAFont - Custom funcs to return fonts
    
//    internal static func dorrisBold() -> UIFont {
//        UIFont(name: Fonts.dorrisBold.fontName, size: 24)!
//    }
    
}
