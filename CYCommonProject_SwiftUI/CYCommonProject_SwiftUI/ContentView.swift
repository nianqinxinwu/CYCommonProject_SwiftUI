//
//  ContentView.swift
//  CYCommonProject_SwiftUI
//
//  Created by 舞极灵瞳 on 2024/12/5.
//

import SwiftUI
import SwiftData

struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            Text("你好")
        } detail: {
            Text("欢迎使用")
        }
    }
}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
