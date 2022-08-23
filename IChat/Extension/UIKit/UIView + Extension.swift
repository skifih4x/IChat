//
//  UIView + Extension.swift
//  IChat
//
//  Created by Артем Орлов on 23.08.2022.
//

import UIKit

extension UIView {
     
    func applyGradient(cornerRadius: CGFloat) {
        backgroundColor = nil
        layoutIfNeeded()
        let gradientView = GradientView(from: .topTrailing,
                                        to: .bottomLeading,
                                        startColor: #colorLiteral(red: 0.8309458494, green: 0.7057176232, blue: 0.9536159635, alpha: 1),
                                        endColor: #colorLiteral(red: 0.4784313725, green: 0.6980392157, blue: 0.9215686275, alpha: 1))
        if let gradientLayer = gradientView.layer.sublayers?.first  as? CAGradientLayer {
            gradientLayer.frame = bounds
            gradientLayer.cornerRadius = cornerRadius
            layer.insertSublayer(gradientLayer, at: 0)
        }
    }
}


extension UIImageView {
    func setupColor(color: UIColor) {
        let templateImage = image?.withRenderingMode(.alwaysTemplate)
        image = templateImage
        tintColor =  color
    }
}
