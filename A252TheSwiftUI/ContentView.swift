//
//  ContentView.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum:
                                                getWidthOfNumberInLine(number: 4)
                                              ))]) {
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
            CardView(content:"😍")
                .aspectRatio(2/3, contentMode: .fit)
  
        }
        
    }
    
    func getWidthOfNumberInLine(number:Double)->Double{
        let screenWidth = UIScreen.main.bounds.width
        
        return screenWidth / number - 10
    }
    
}

#Preview {
    ContentView()
}
