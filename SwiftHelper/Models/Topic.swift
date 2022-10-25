//
//  SwiftData.swift
//  SwiftHelper
//
//  Created by Roman on 25.10.2022.
//

struct Topic {
    let theme: String
    
    static func getTopics() -> [Topic] {
        [
            Topic(theme: "Константы и переменные"),
            Topic(theme: "Типы свойств"),
            Topic(theme: "Базовые операторы"),
            Topic(theme: "Операторы ветвлений"),
            Topic(theme: "Типы коллекций"),
            Topic(theme: "Функции"),
            Topic(theme: "Замыкания"),
            Topic(theme: "Классы"),
            Topic(theme: "Структуры"),
            Topic(theme: "Перечисления")
        ]
    }
}
    

