//
//  ContentView.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI

struct ContentView: View {
  
    
    @State var r = 0.5
    @State var g = 0.5
    @State var b = 0.5
    
    var body: some View {
        ZStack{
            theBackgroud
            VStack{
                HStack{
                    Text("R: \(String(format: "%3.0f", r * 255))")
                    Text("G: \(String(format: "%3.0f", g * 255))")
                    Text("B: \(String(format: "%3.0f", b * 255))")
                }
                .padding(20)
                .font(.largeTitle)
                Spacer()
                Slider(value: $r)
                    .padding(.horizontal, 30.0)
                    .padding(.vertical,10.0)
                Slider(value: $g)
                    .padding(.horizontal, 30.0)
                    .padding(.vertical,10.0)
                Slider(value: $b)
                    .padding(.horizontal, 30.0)
                    .padding(.top,10.0)
                    .padding(.bottom,30.0)
            }
        }
    }
    
    var theBackgroud:some View {
        Color(red: r, green: g, blue: b)
    }
    
}

#Preview {
    ContentView()
}
