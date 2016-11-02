//
//  CircleView.swift
//  Idealy
//
//  Created by Steven Graf on 10/30/16.
//  Copyright © 2016 Steven Graf. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    
}
