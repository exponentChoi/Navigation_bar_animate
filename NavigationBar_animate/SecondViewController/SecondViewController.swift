//
//  SecondViewController.swift
//  NavigationBar_animate
//
//  Created by 최지수 on 2020/12/29.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    // MARK: - view
    let secondView = SecondView()
    
    private func setupUI() {
        view.addSubview(secondView)
        secondView.frame = view.frame
        
        secondView.button.on { sender, event in
            self.tapButton(sender: sender)
        }
    }
    
    
    private func getStatusbar() -> CGRect {
        if #available(iOS 13.0, *) {
            return self.view.window?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect()
        } else {
            // Fallback on earlier versions
            return UIApplication.shared.statusBarFrame
        }
    }
    
    func tapButton(sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            guard let naviFrame = self.navigationController?.navigationBar.frame else { return }
            
            if naviFrame.origin.y == -naviFrame.height {
                self.navigationController?.navigationBar.frame.origin = CGPoint(x: 0, y: naviFrame.height)
                sender.setTitle("hide navigtaion bar", for: .normal)
            } else {
                self.navigationController?.navigationBar.frame.origin = CGPoint(x: 0, y: -naviFrame.height)
                
                sender.setTitle("show navigtaion bar", for: .normal)
            }
        })
    }

}
