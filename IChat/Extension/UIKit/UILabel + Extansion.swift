//
//  UILabel + Extansion.swift
//  IChat
//
//  Created by Артем Орлов on 17.08.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
