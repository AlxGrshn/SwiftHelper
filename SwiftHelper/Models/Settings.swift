//
//  Settings.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

struct Settings {
    let theme: String
    
    static func getSettings() -> [Settings] {
        [
            Settings(theme: "Стиль шрифта"),
            Settings(theme: "Цвет шрифта"),
            Settings(theme: "О приложении"),
            Settings(theme: "Контакты")
        ]
    }
}
