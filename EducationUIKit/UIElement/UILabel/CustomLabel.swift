//
//  CustomLabel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

class CustomLabel: UILabel {
    init(size: CGFloat, weight: UIFont.Weight, nol: Int, alignment: NSTextAlignment, color: UIColor) {
        super.init(frame: .null)
        translatesAutoresizingMaskIntoConstraints = false
        font = .systemFont(ofSize: size, weight: weight)
        numberOfLines = nol
        textAlignment = alignment
        textColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
