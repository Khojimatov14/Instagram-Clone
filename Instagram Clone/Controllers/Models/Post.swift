//
//  File.swift
//  Instagram Clone
//
//  Created by Anvarjon Khojimatov on 2021/10/04.
//

import Foundation

class Post {
    var fullName: String?
    var userImage: String?
    var post_Image: String?
    var post_Image2: String?
    
    init(fullName: String, userImage: String, post_Image: String, post_Image2: String) {
        self.fullName = fullName
        self.userImage = userImage
        self.post_Image = post_Image
        self.post_Image2 = post_Image2
    }
}
