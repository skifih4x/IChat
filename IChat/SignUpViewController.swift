//
//  SignUpViewController.swift
//  IChat
//
//  Created by Артем Орлов on 17.08.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Good to see you!", font: .avenir26())
    
    let emailLabel = UILabel(text: "Email", font: .avenir26())
    let passwordLabel = UILabel(text: "Password", font: .avenir26())
    let confirmPasswordLabel = UILabel(text: "Confirm password", font: .avenir26())
    let alreadyOnboardLabel = UILabel(text: "Already onboard", font: .avenir26())
    
    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())
    let confirmPasswordTextField = OneLineTextField(font: .avenir20())
    
    let signUpButton = UIButton(title: "Sign Up", titleColor: .white, backgroundColor: .buttonDark(), cornerRadius: 4)
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonRed(), for: .normal)
        view.backgroundColor = .orange
        setupConstraints()
    }
}

//MARK: - Setup Contraints

extension SignUpViewController {
    private func setupConstraints() {
        
    }
}

//MARK: - import SwiftUI

import SwiftUI

struct SignUpVCProvider: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
            .previewDevice("iPhone 13 Pro Max")
    }
    
    struct Container: UIViewControllerRepresentable {
        
        let viewController = SignUpViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}


