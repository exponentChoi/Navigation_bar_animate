//
//  ViewController.swift
//  NavigationBar_animate
//
//  Created by 최지수 on 2020/12/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressPushViewController(_ sender: Any) {
        let viewController = SecondViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

