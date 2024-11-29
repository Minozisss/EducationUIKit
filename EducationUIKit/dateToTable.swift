//
//  dateToTable.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 29.11.2024.
//

import Foundation

struct dateToTable {
    var name: String
    var image: String
    var descriptionText: String? = nil
    
    static func dateUser() -> [dateToTable] {
        [ dateToTable(name: "Максим", image: "maksim"),
          dateToTable(name: "Света", image: "1"),
          dateToTable(name: "Геля", image: "2"),
          dateToTable(name: "Лёня", image: "3")
        ]
    }
    
    static func dateGroup() -> [dateToTable] {
        [ dateToTable(name: "Рабочий чат", image: "4", descriptionText: "Игнорировать после 22:00"),
          dateToTable(name: "Семейный чат", image: "5", descriptionText: "Мои дорогие"),
          dateToTable(name: "errorNil", image: "6", descriptionText: "Чат обучения Swift"),
          dateToTable(name: "Группа 10901", image: "7", descriptionText: "Вузовский чат")
        ]
    }
    
}


