import UIKit

// MARK:  - Task 1
print("--- Task #1 ---")

enum ServerError: Error, CaseIterable {
    case error400
    case error404
    case error500
}

// MARK: Variables
var badRequest: Bool = false
var pageNotFound: Bool = true
var internalServerError: Bool = false

do {
    if badRequest {
        throw ServerError.error400
    }
    
    if pageNotFound {
        throw ServerError.error404
    }
    
    if pageNotFound {
        throw ServerError.error500
    }
} catch ServerError.error400 {
    print("Ошибка сервера: Плохой, неверный запрос")
} catch ServerError.error404 {
    print("Ошибка сервера: Не найдено")
} catch ServerError.error500 {
    print("Ошибка сервера: Внутренняя ошибка сервера")
}
