//
//  MyViewControllerForSwiftUI.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import SwiftUI
import UIKit

struct MyViewControllerForSwiftUI:UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController {
        let nav = UINavigationController()
        nav.addChild(MyUIViewViewController())
        nav.popToRootViewController(animated: true)
        return nav
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    typealias UIViewType = MyUIViewViewController
}

