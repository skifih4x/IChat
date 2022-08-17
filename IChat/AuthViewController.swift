//
//  AuthViewController.swift
//  IChat
//
//  Created by Артем Орлов on 07.08.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)

    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(
                            title: "Google",
                            titleColor: .black,
                            backgroundColor: .white,
                            isShadow: true)
    
    let emailButton = UIButton(
                            title: "Email",
                            titleColor: .white,
                            backgroundColor: .buttonDark())
    
    let loginButton = UIButton(
                            title: "Email",
                            titleColor: .buttonRed(),
                            backgroundColor: .white,
                            isShadow: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

//MARK: - import SwiftUI

import SwiftUI

struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
            .previewDevice("iPhone 13 Pro Max")
    }
    
    struct Container: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

