//
//  AuthError.swift
//  IChat
//
//  Created by Артем Орлов on 24.08.2022.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case passwordNotMatched
    case unknownError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Формат почты не является допустимым", comment: "")

        case .passwordNotMatched:
            return NSLocalizedString("Пароли не совпадают", comment: "")

        case .unknownError:
            return NSLocalizedString("Неизвестная ошибка", comment: "")

        case .serverError:
            return NSLocalizedString("Ошибка сервера", comment: "")

        }
    }
}
