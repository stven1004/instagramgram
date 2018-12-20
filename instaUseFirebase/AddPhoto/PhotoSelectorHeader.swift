//
//  PhotoSelectorHeader.swift
//  instaUseFirebase
//
//  Created by Seungjun Lim on 20/12/2018.
//  Copyright © 2018 Seungjun Lim. All rights reserved.
//

import UIKit

class PhotoSelectorHeader: UICollectionViewCell {
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .cyan
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        photoImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemonted")
    }
    
}
