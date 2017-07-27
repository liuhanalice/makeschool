//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by 刘涵 on 2017/7/27.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

class PostHeaderCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
   
    
    
    static let height: CGFloat = 54
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
   
    @IBAction func optionButtonTapped(_ sender: UIButton) {
        print("options button tapped")
    }
}
