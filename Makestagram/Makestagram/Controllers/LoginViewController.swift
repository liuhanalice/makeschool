//
//  LoginViewController.swift
//  Makestagram
//
//  Created by 刘涵 on 2017/7/25.
//  Copyright © 2017年 Make School. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FirebaseDatabase


typealias FIRUser = FirebaseAuth.User
class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var LoginButton: UIButton!
    
  
    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        print("Login Button Tapped")
        guard let authUI = FUIAuth.defaultAuthUI()
            else { return }
        
        authUI.delegate = self
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
    
}

    extension LoginViewController: FUIAuthDelegate {
    
        func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        
            if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return
            
        }
       
        guard let user = user
            else { return }
        
        
        let userRef = Database.database().reference().child("users").child(user.uid)
        
       
            UserService.show(forUID: user.uid) { (user) in
                if let user = user {
                    User.setCurrent(user, writeToUserDefaults: true)
                
                    //let storyboard = UIStoryboard(type: .main)
                
                let initialViewController = UIStoryboard.initialViewController(for: .main)
                    self.view.window?.rootViewController = initialViewController
                    self.view.window?.makeKeyAndVisible()
                    
                }
               
                else {
                self.performSegue(withIdentifier: Constants.Segue.toCreateUsername, sender: self)
            }
        }

        print("handle user signup / login")
     }
}
