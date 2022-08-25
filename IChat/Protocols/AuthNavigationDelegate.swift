//
//  AuthNavigationDelegate.swift
//  IChat
//
//  Created by Артем Орлов on 25.08.2022.
//

import Foundation

protocol AuthNavigationDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
