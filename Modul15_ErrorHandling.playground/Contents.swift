import UIKit

// MARK:  - Task 1
//Создайте перечисление для ошибок. Добавьте в него 3 кейса:

// - ошибка 400,
// - ошибка 404,
// - ошибка 500.
//Далее создайте переменную, которая будет хранить в себе какую-либо ошибку (400 или 404 или 500). И при помощи do-catch сделайте обработку ошибок перечисления. Для каждой ошибки должно быть выведено сообщение в консоль.
print("--- Task #1 ---")

enum ServerError: Error {
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

// MARK:  - Task 2
//Теперь добавьте проверку переменных в генерирующую функцию и обрабатывайте её!
print("\n--- Task #2 ---")

func checkServer() throws {
    if badRequest {
        throw ServerError.error400
    }

    if pageNotFound {
        throw ServerError.error404
    }

    if pageNotFound {
        throw ServerError.error500
    }
}

do {
    try checkServer()
} catch ServerError.error400 {
    print("Ошибка сервера: Плохой, неверный запрос")
} catch ServerError.error404 {
    print("Ошибка сервера: Не найдено")
} catch ServerError.error500 {
    print("Ошибка сервера: Внутренняя ошибка сервера")
}

// MARK:  - Task 3
//Напишите функцию, которая будет принимать на вход два разных типа и проверять: если типы входных значений одинаковые, то вывести сообщение “Yes”, в противном случае — “No”.
print("\n--- Task #3 ---")

func checkTypes<ItemAType, ItemBType>(for itemA: ItemAType, and itemB: ItemBType){
    if ItemAType.self == ItemBType.self {
        print("Yes")
    } else {
        print("No")
    }
}
// Should print "Yes":
checkTypes(for: 2, and: 2)

// Should print "No":
checkTypes(for: 2, and: "2")

// MARK:  - Task 4
//Реализуйте то же самое, но если тип входных значений различается, выбросите исключение. Если тип одинаковый — тоже выбросите исключение, но оно уже будет говорить о том, что типы одинаковые. Не бойтесь этого. Ошибки — это не всегда про плохой результат.
print("\n--- Task #4 ---")

enum ComparedTypes: Error {
    case typesAreDifferent
    case typesAreSame
}

func checkTypesAndThrowError<ItemAType, ItemBType>(for itemA: ItemAType, and itemB: ItemBType) throws {
    if ItemAType.self == ItemBType.self {
        throw ComparedTypes.typesAreSame
    } else {
        throw ComparedTypes.typesAreDifferent
    }
}

// Should print "Yes":
do{
    try checkTypesAndThrowError(for: 2, and: 2)
}
catch ComparedTypes.typesAreSame {
    print("Yes")
} catch ComparedTypes.typesAreDifferent {
    print("No")
}

// Should print "No":
do{
    try checkTypesAndThrowError(for: 2, and: "2")
}
catch ComparedTypes.typesAreSame {
    print("Yes")
} catch ComparedTypes.typesAreDifferent {
    print("No")
}
