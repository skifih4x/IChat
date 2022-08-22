//
//  SelfConfiguringCell.swift
//  IChat
//
//  Created by Артем Орлов on 22.08.2022.
//

import Foundation


protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
