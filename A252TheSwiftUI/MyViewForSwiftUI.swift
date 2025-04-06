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
        let view = MyUIView()
        view.resp = {
            updateUIView(view, context: context)
        }
        return view
    }
    
    func updateUIView(_ uiView: MyUIView, context: Context) {
        print("resp in updateUIView")
    }
    
    typealias UIViewType = MyUIView
    
    
    
}
