//
//  PostTableViewCell.swift
//  Instagram Clone
//
//  Created by Anvarjon Khojimatov on 2021/10/04.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var prifileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postImage1: UIImageView!
    @IBOutlet weak var postImage2: UIImageView!
    
override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
