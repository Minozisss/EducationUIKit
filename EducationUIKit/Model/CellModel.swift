//
//  CellModel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 13.12.2024.
//

import Foundation

struct OnePosition: Identifiable {
    var id: String = UUID().uuidString // Генерирует уникальное значение ID, которое никогда не повторится (Нужно подписывать под протокол Identifiable)
    var image: String
    var price: String
    var name: String
    var type: String
    var OS: String
    var weight: String
    var proportions: String
    
    static func data() -> [OnePosition] {
        [
            OnePosition(image: "img1", price: "107 000 ₽", name: "Apple iPhone 14 Pro 256Gb Серебристый", type: "Тип: смартфон", OS: "Операционная система: iOS 16", weight: "Вес: 310 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img2", price: "119 000 ₽", name: "Apple iPhone 14 Pro 512Gb Золотой", type: "Тип: смартфон", OS: "Операционная система: iOS 17", weight: "Вес: 290 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img3", price: "67 000 ₽", name: "Apple iPhone 14 512Gb Cияющая звезда", type: "Тип: смартфон", OS: "Операционная система: iOS 18", weight: "Вес: 250 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img4", price: "52 000 ₽", name: "Apple iPhone 14 128Gb Голубой", type: "Тип: смартфон", OS: "Операционная система: iOS 16", weight: "Вес: 260 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img1", price: "104 000 ₽", name: "Apple iPhone 14 Pro 256Gb Серебристый", type: "Тип: смартфон", OS: "Операционная система: iOS 16", weight: "Вес: 310 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img2", price: "89 000 ₽", name: "Apple iPhone 14 Pro 512Gb Золотой", type: "Тип: смартфон", OS: "Операционная система: iOS 17", weight: "Вес: 290 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img3", price: "92 000 ₽", name: "Apple iPhone 14 512Gb Cияющая звезда", type: "Тип: смартфон", OS: "Операционная система: iOS 18", weight: "Вес: 250 гр", proportions: "Размеры: 160.7x77.6x7.85 мм"),
            OnePosition(image: "img4", price: "50 000 ₽", name: "Apple iPhone 14 128Gb Голубой", type: "Тип: смартфон", OS: "Операционная система: iOS 16", weight: "Вес: 260 гр", proportions: "Размеры: 160.7x77.6x7.85 мм")
        ]
    }
}
