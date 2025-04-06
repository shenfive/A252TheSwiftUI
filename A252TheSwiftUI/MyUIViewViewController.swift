//
//  MyUIViewViewController.swift
//  A252TheSwiftUI
//
//  Created by 申潤五 on 2025/4/6.
//

import UIKit

class MyUIViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextPage(_ sender: Any) {
        let nextVC = UIViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
