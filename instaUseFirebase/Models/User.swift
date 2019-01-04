//
//  User.swift
//  instaUseFirebase
//
//  Created by Seungjun Lim on 28/12/2018.
//  Copyright © 2018 Seungjun Lim. All rights reserved.
//

import Foundation


struct User {
    
    let uid: String
    let username: String
    let profileImageUrl: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
