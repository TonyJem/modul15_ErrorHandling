# modul15_ErrorHandling
[Description](#taskDescription)

[Description](#description)

[Acceptance Criteria](#acceptance)

## Task Description:
 1. Создайте перечисление для ошибок. Добавьте в него 3 кейса:

ошибка 400,
ошибка 404,
ошибка 500.
Далее создайте переменную, которая будет хранить в себе какую-либо ошибку (400 или 404 или 500). И при помощи do-catch сделайте обработку ошибок перечисления. Для каждой ошибки должно быть выведено сообщение в консоль.

2. Теперь добавьте проверку переменных в генерирующую функцию и обрабатывайте её! 

3. Напишите функцию, которая будет принимать на вход два разных типа и проверять: если типы входных значений одинаковые, то вывести сообщение “Yes”, в противном случае — “No”.

4. Реализуйте то же самое, но если тип входных значений различается, выбросите исключение. Если тип одинаковый — тоже выбросите исключение, но оно уже будет говорить о том, что типы одинаковые. Не бойтесь этого. Ошибки — это не всегда про плохой результат.

5. Напишите функцию, которая принимает на вход два любых значения и сравнивает их при помощи оператора равенства ==.
 
 
## Acceptance Criteria:

1. Создано перечисление, которое соответствует протоколу Error. Для него создано любые 3 кейса —  ошибки. Есть переменная, которая хранит в себе ошибку (400 или 404 или 500). Есть обработка ошибок перечисления при помои do-catch. Для каждой ошибки выведено сообщение в консоль.
- выполнено — 2 балла
- реализовано частично — 1 балл
- не выполнено — 0 баллов

2. Есть проверка переменных в генерирующей функцию, есть её обработка.
- выполнено — 3 балла
- не выполнено — 0 баллов

3. Есть функция, принимающая на вход два разных типа, которая проверяет типы входных значений. Выводит “Yes”, если они одинаковые, в противном случае — “No”.
- выполнено — 2 балла
- реализовано частично — 1 балл
- не выполнено — 0 баллов

4. Реализовано то же самое, что и в пункте 3, но если тип входных значений различается, выбрасывается исключение. Если тип одинаковый — исключение тоже выбрасывается.
- выполнено — 2 балла
- реализовано частично — 1 балл
- не выполнено — 0 баллов

5. Есть функция, которая принимает на вход два любых значения и сравнивает их при помощи оператора равенства (==).
- выполнено — 2 балла
- реализовано частично — 1 балл
- не выполнено — 0 баллов

Simple iOS App, done as guided project for learning purposes in 2020 May.

[Implementation](#implementation)

[References](#references)

## Description:
This App manages a list of ToDo items and stores it away for later retrieval. User can add, modify, and delete items in the list using a custom input screen. Each ToDo has a due date and a set of notes; it can be marked as complete, but remains in the list until the user deletes it.

#### This app handles the following actions:

  1. Display the list, containing data retrieved from disk.
  
  2. Add new items to the list.
