//
//  CYCommonProject_SwiftUIApp.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import SwiftUI
import SwiftData

@main
struct CYCommonProject_SwiftUIApp: App {
    // SwiftData
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

//    @StateObject private var themeManager = ThemeManager.shared
    
    // 主工程入口
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environment(themeManager)
        }
        .modelContainer(sharedModelContainer)
    }
}
