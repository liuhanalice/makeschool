//
//  PostActionCell.swift
//  Makestagram
//
//  Created by 刘涵 on 2017/7/27.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

class PostActionCell: UITableViewCell {
    
    static let height: CGFloat = 46
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
    
    print("like button tapped")
    
    }
    
}
