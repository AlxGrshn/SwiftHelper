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
            Settings(theme: "Тема экрана"),
            Settings(theme: "Стиль шрифта"),
            Settings(theme: "Цвет шрифта"),
            Settings(theme: "Размер шрифта")
        ]
    }
}
