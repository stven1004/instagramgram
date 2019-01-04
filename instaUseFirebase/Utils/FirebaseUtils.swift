//
//  FirebaseUtils.swift
//  instaUseFirebase
//
//  Created by Seungjun Lim on 02/01/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import Foundation
import Firebase

extension Database {
    static func fetchUserWithUID(uid: String, completion: @escaping (User) -> ()) {
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String: Any] else { return }
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            completion(user)
            
        }) { (err) in
            print("Failed to fetch posts:", err)
        }
    }
}
