//
//  UIImageView+ImageTint.swift
//  ImageViewTintImage
//
//  Created by Ben Bahrenburg on 7/26/15.
//  Copyright © 2015 Bencoding. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {

    func tintImageColor(color : UIColor) {
        self.image = self.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        self.tintColor = color
    }
    
}