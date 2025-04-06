//
//  ContentView.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI

struct ContentView: View {
    @State var page:Int = 1
    var body: some View {
        TabView(selection: $page) {
            Text("Hello, World! \(page)")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(8)
            Text(" SwiftUI  \(page)  xxx")
                .tabItem {
                    Image(systemName: "book")
                    Text("SwiftUI")
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
