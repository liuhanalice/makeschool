//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by 刘涵 on 2017/7/26.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        delegate = self
       
        tabBar.unselectedItemTintColor = .black
    }
}


extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            // present photo taking action sheet
            print("take photo")
            
            return false
        } else {
            return true
        }
    }
}
