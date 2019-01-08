//
//  Comment.swift
//  instaUseFirebase
//
//  Created by Seungjun Lim on 08/01/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import Foundation

struct Comment {
    
    let user: User?
    
    let text: String
    let uid: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
