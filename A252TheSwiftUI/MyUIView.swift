//
//  MyUIView.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import UIKit

class MyUIView: UIView {
    var view:UIView!
       override init(frame: CGRect) {
           super.init(frame: frame)
           setup()
       }
       required init?(coder aDecoder: NSCoder) { //一定要寫的建構器
           super.init(coder: aDecoder)
           setup()
       }
       func setup() {
           view = loadViewFromNib()
           view.frame = bounds
           view.autoresizingMask = [ UIView.AutoresizingMask.flexibleWidth,
               UIView.AutoresizingMask.flexibleHeight ] // 一些歷史原因，必需要上的設定
           addSubview(view) //把 由 UI檔作出來的 View 加入成自己的 SubView
       }
       
       func loadViewFromNib() -> UIView { //由 Xib 檔，製作一個UIView
           let nib = UINib(nibName: "MyUIView", bundle: nil )
           let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
           return view
       }


}
