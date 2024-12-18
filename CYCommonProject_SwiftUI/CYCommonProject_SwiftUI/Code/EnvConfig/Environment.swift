//
//  Environment.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import UIKit

// 不可继承更改的类
final class Environment {
    // MARK: - Constant

    private let typeFileEnvironment = "plist"
    private let nameFileEnvironment = "Config"
    private let keyShopEnvironmentURL = "ShopBaseURL"
    private let keyAIEnvironmentURL = "AIBaseURL"
    
    // MARK: - Shared Instance

    static let shared = Environment()
    
    // MARK: - Properties
    private var plistEnvironment: [String: Any]?
    
    // MARK: - Init
    
    private init() {
        if let path = Bundle.main.path(forResource: nameFileEnvironment, ofType: typeFileEnvironment) {
            plistEnvironment = NSDictionary(contentsOfFile: path) as? [String: AnyObject]
        }
    }
    
    // MARK: = Properties
    var shopBaseURL: String {
        guard let baseUrl =  plistEnvironment?[keyShopEnvironmentURL] as? String else { fatalError("无效域名") }
        return baseUrl
    }
}
