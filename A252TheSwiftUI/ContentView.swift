//
//  ContentView.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI

struct ContentView: View {
    @State var theText:String = ""
    var body: some View {
        Text("輸入的字:\(theText)")
            .font(.largeTitle)
        TextField("请输入", text: $theText)
            .padding(10)
    }
}

#Preview {
    ContentView()
}
