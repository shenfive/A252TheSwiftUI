//
//  MyViewForSwiftUI.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI
import UIKit

struct MyViewForSwiftUI: UIViewRepresentable {
    func makeUIView(context: Context) -> MyUIView {
        return MyUIView()
    }
    
    func updateUIView(_ uiView: MyUIView, context: Context) {
        
    }
    
    typealias UIViewType = MyUIView
    
    
    
}
