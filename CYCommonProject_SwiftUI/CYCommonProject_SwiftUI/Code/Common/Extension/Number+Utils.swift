//
//  Number+Utils.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import Foundation

extension NSNumber {
    func toString(from locale: Locale = Locale(identifier: "zh_Hans_CN"), minFractionDigits: Int = 2, maxFractionDigits: Int = 12, usesGroupingSeparator: Bool = true) -> String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = locale
        formatter.usesGroupingSeparator = usesGroupingSeparator
        formatter.minimumFractionDigits = minFractionDigits
        formatter.maximumFractionDigits = maxFractionDigits
        formatter.groupingSeparator = "."
        
        return formatter.string(from: self) ?? ""
    }

}
