//
//  SwiftData.swift
//  SwiftHelper
//
//  Created by Roman on 25.10.2022.
//

struct Topic {
    let title: String
    
    static func getTopics() -> [Topic] {
        [
            Topic(title: "Константы и переменные"),
            Topic(title: "Типы свойств"),
            Topic(title: "Базовые операторы"),
            Topic(title: "Операторы ветвлений"),
            Topic(title: "Типы коллекций"),
            Topic(title: "Функции"),
            Topic(title: "Замыкания"),
            Topic(title: "Классы"),
            Topic(title: "Структуры"),
            Topic(title: "Перечисления")
        ]
    }
}
    

