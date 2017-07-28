//
//  PostActionCell.swift
//  Makestagram
//
//  Created by 刘涵 on 2017/7/27.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}




class PostActionCell: UITableViewCell {
    
    static let height: CGFloat = 46
    
    weak var delegate: PostActionCellDelegate?
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
    
    delegate?.didTapLikeButton(sender, on: self)
    
    }
    
}
