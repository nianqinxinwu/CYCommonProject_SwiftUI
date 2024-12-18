//
//  Strings+Utils.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    var removeWhitespaces: String {
        return replacingOccurrences(of: " ", with: "")
    }
    
    /// 格式化其他国家电话
    func formatPhoneOtherCuntry(separator: String = " ") -> String {
        if count != 9 {
            return self
        } else {
            return components(separatedBy: separator).joined().splitString(batchSize: 3).map {
                String($0)
            }.joined(separator: separator)
        }
    }
    
    /// 格式化中国手机号
    func formatPhoneWithZHHans(separator: String = "" ) -> String {
        // 检查是否包含国家码，这里以中国的国家码+86为例
            let hasCountryCode = hasPrefix("+86")
            
            // 根据是否有国家码，确定电话号码的长度
            let lengthWithCountryCode = 13 // 包含国家码的总长度
            let lengthWithoutCountryCode = 11 // 不包含国家码的总长度
            
            if hasCountryCode {
                // 如果包含国家码，去除国家码后格式化本地号码
                let localNumber = self.dropFirst(3) // 去除国家码
                if localNumber.count == lengthWithoutCountryCode {
                    let part1 = localNumber.prefix(3)
                    let part2 = localNumber.dropFirst(3).prefix(4)
                    let part3 = localNumber.dropFirst(7)
                    return "+86 \(part1)\(separator)\(part2)\(separator)\(part3)"
                } else {
                    // 如果本地号码长度不正确，返回原始字符串
                    return self
                }
            } else {
                // 如果不包含国家码，直接格式化
                if count == lengthWithoutCountryCode {
                    let part1 = prefix(3)
                    let part2 = dropFirst(3).prefix(4)
                    let part3 = dropFirst(7)
                    return "\(part1)\(separator)\(part2)\(separator)\(part3)"
                } else {
                    // 如果电话号码长度不正确，返回原始字符串
                    return self
                }
            }
    }
    
    
    /// 添加百分号
    var addPercent: String {
        return "\(self)%"
    }

    
    // 将字符串分割为数组
    func splitString(batchSize: Int) -> [SubSequence] {
        var remainderIndex = startIndex
        var result: [SubSequence] = []
        while remainderIndex < endIndex {
            let batchEndIndex = index(remainderIndex, offsetBy: batchSize, limitedBy: endIndex) ?? endIndex
            result.append(self[remainderIndex..<batchEndIndex])
            remainderIndex = batchEndIndex
        }
        return result
    }
    
    static func convertDoubleToString(_ value: Double?, minFractionDigits: Int = 2, maxFractionDigits: Int = 2, stringIfNil: String? = nil) -> String {
        if let num = value {
            return NSNumber(value: num).toString(minFractionDigits: minFractionDigits, maxFractionDigits: maxFractionDigits)
        }
        return stringIfNil ?? ""
    }
}
