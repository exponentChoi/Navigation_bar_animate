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

    @IBAction func pressPushViewController(_ sender: UIButton) {
        let viewController = createVC(sender.tag)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func createVC(_ tag: Int) -> UIViewController {
        switch tag {
        case 0: return SecondViewController()
        case 1:
            let sb = UIStoryboard(name: "Third", bundle: nil)
            return sb.instantiateViewController(withIdentifier: "ThirdVC")
//            return StretchHeaderController(collectionViewLayout: StretchHeaderLayout())
//            return StretchHeaderController()
            
        default: return UIViewController()
        }
    }
    
}
