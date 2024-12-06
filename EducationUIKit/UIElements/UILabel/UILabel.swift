//
//  UILabel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import UIKit
// Используется для создания текстов
class CustomLabel: UILabel {
    init(color: UIColor, lines: Int, size: CGFloat, weight: UIFont.Weight) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        textColor = color
        numberOfLines = lines
        font = .systemFont(ofSize: size, weight: weight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
       
