//
//  ProfileViewController.swift
//  IChat
//
//  Created by Артем Орлов on 23.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let containerView = UIView()
    let imageView = UIImageView(image: #imageLiteral(resourceName: "human2"),
                                contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "Peter Ben",
                            font: .systemFont(ofSize: 20, weight: .light))
    let aboutMeLabel = UILabel(text: "You have the opportunity to chat with the best man in the wold!",
                               font: .systemFont(ofSize: 20, weight: .light))
    let myTextField = InsertableTextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        customizeElement()
        setupConstraints()
    }
    
    private func customizeElement() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutMeLabel.translatesAutoresizingMaskIntoConstraints = false
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        aboutMeLabel.numberOfLines = 0
        containerView.backgroundColor = .mainWhite()
        containerView.layer.cornerRadius = 30
        
        if let button = myTextField.rightView as? UIButton {
            button.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
        }
    }
    
    @objc private func sendMessage() {
        print(#function)
    }
}

//MARK: - Setup Constraints

extension ProfileViewController {
   private func setupConstraints() {
       view.addSubview(imageView)
       view.addSubview(containerView)
       containerView.addSubview(nameLabel)
       containerView.addSubview(aboutMeLabel)
       containerView.addSubview(myTextField)
       
       NSLayoutConstraint.activate([
        imageView.topAnchor.constraint(equalTo: view.topAnchor),
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        imageView.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: 30)
       ])
       
       NSLayoutConstraint.activate([
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        containerView.heightAnchor.constraint(equalToConstant: 206)
       ])

       NSLayoutConstraint.activate([
        nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 35),
        nameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24),
        nameLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -24)
       ])
       
       NSLayoutConstraint.activate([
        aboutMeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
        aboutMeLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24),
        aboutMeLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -24)
       ])
       
       NSLayoutConstraint.activate([
        myTextField.topAnchor.constraint(equalTo: aboutMeLabel.bottomAnchor, constant: 8),
        myTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24),
        myTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -24),
        myTextField.heightAnchor.constraint(equalToConstant: 48)
       ])
       
    }
}

//MARK: - import SwiftUI

import SwiftUI

struct ProfileVCProvider: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
            .previewDevice("iPhone 13 Pro Max")
    }
    
    struct Container: UIViewControllerRepresentable {
        
        let profileVC = ProfileViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            profileVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
