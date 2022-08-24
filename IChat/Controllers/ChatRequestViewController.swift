//
//  ChatRequestViewController.swift
//  IChat
//
//  Created by Артем Орлов on 23.08.2022.
//

import UIKit

class ChatRequestViewController: UIViewController {
    
    let containerView = UIView()
    let imageView = UIImageView(image: #imageLiteral(resourceName: "human2"),
                                contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "Peter Ben",
                            font: .systemFont(ofSize: 20, weight: .light))
    let aboutMeLabel = UILabel(text: "You have the opportunity to start you chat",
                               font: .systemFont(ofSize: 20, weight: .light))
    
    let acceptButton = UIButton(title: "ACCEPT",
                                titleColor: .white,
                                backgroundColor: .black,
                                font: .laoSangamMN20(),
                                isShadow: false,
                                cornerRadius: 10)
    let denyButton = UIButton(title: "Deny",
                              titleColor: #colorLiteral(red: 0.8352941176, green: 0.2, blue: 0.2, alpha: 1),
                                backgroundColor: .mainWhite(),
                                font: .laoSangamMN20(),
                                isShadow: false,
                              cornerRadius: 10)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainWhite()
        customizeElements()
        setupConstraints()
    }
    
    private func customizeElements() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutMeLabel.translatesAutoresizingMaskIntoConstraints = false

        denyButton.layer.borderWidth = 1.2
        denyButton.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.2, blue: 0.2, alpha: 1)
        containerView.backgroundColor = .mainWhite()
        containerView.layer.cornerRadius = 30
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        acceptButton.applyGradient(cornerRadius: 10)

    }
    
}

//MARK: - Setup Constraints

extension ChatRequestViewController {
    private func setupConstraints() {
        view.addSubview(imageView)
        view.addSubview(containerView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(aboutMeLabel)
        
        let buttonsStackView = UIStackView(arrangedSubviews: [acceptButton, denyButton],
                                           axis: .horizontal,
                                           spacing: 7)
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonsStackView.distribution = .fillEqually
        containerView.addSubview(buttonsStackView)
        
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
         buttonsStackView.topAnchor.constraint(equalTo: aboutMeLabel.bottomAnchor, constant: 24),
         buttonsStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24),
         buttonsStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -24),
         buttonsStackView.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
}
//MARK: - import SwiftUI

import SwiftUI
 
struct ChatRequestVCProvider: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
            .previewDevice("iPhone 13 Pro Max")
    }
    
    struct Container: UIViewControllerRepresentable {
        
        let tabBarVC = ChatRequestViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            tabBarVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

