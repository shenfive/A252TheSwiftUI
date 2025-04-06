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
    
    @State var emojiCount: Int = 5
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:
                                                        getWidthOfNumberInLine(number: 4)
                                                      ))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content:emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            MyViewControllerForSwiftUI()
            HStack{
                add
                Spacer()
                remove
            }
            .font(.largeTitle)
            .padding(.horizontal)
            
        }
        .padding(.horizontal)
    }
    
    var remove:some View {
        Button{
            if emojiCount > 0{
                self.emojiCount -= 1
            }
        }label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add:some View {
        Button{
            if emojiCount < 20{
                self.emojiCount += 1
            }
        }label: {
            Image(systemName: "plus.circle")
        }
    }
    
    
    
    func getWidthOfNumberInLine(number:Double)->Double{
        let screenWidth = UIScreen.main.bounds.width
        
        return screenWidth / number - 20
    }
    
}

#Preview {
    ContentView()
}
