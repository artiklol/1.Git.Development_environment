//
//  LanguageData.swift
//  task_1
//
//  Created by Artem Sulzhenko on 08.12.2022.
//

import UIKit

class LanguageData{
    
    static let shared = LanguageData()
    
    let data: [(
        language: String,
        greeting: String,
        theme: (auto: String, light: String, dark: String)
    )] = [
        ("English",
         "Hello world!",
         (auto: "Auto Theme", light: "Light Theme", dark: "Dark Theme")),
        
        ("Беларускі",
         "Прывітанне, свет!",
         (auto: "Аўтаматычная тэма", light: "Светлая тэма", dark: "Цёмная тэма")),
        
        ("Русский",
         "Привет, мир!",
         (auto: "Автоматическая тема", light: "Светлая тема", dark: "Темная тема"))
    ]
}
