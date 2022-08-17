//
//  UIImageView + Extansion.swift
//  IChat
//
//  Created by Артем Орлов on 17.08.2022.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
