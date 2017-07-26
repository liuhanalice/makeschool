//
//  ViewController.swift
//  sample_app
//
//  Created by sweetiewill on 7/26/17.
//  Copyright © 2017 brewinglab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
  
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonC: UIButton!
    
    @IBAction func ButtonATapped(_ sender: UIButton) {
        ButtonA.isHidden = true
            }
    
    @IBOutlet weak var ButtonB: UIButton!

    @IBAction func ButtonBTapped(_ sender: UIButton) {
        
        ButtonB.isHidden = true
      
    }
    
    
    @IBAction func ButtonCTapped(_ sender: UIButton) {
    
    
        ButtonC.isHidden = true
    
    
    }
    
    
    @IBOutlet weak var poutineisLabel: UILabel!
    @IBOutlet weak var ButtonNext: UIButton!
    @IBOutlet weak var poutine: UIImageView!
    
    @IBAction func ButtonNextTapped(_ sender: UIButton) {
    
        ButtonA.isHidden = true
        ButtonB.isHidden = true
        ButtonC.isHidden = true
        poutineisLabel.isHidden = true
       
    }
    
}



