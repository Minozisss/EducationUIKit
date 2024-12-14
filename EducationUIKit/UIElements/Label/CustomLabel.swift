//
//  CustomLabel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.12.2024.
//

import UIKit

class CustomLabel: UILabel {
    init(clr: UIColor, size: CGFloat, weight: UIFont.Weight) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        textColor = clr
        numberOfLines = 0
        font = .systemFont(ofSize: size, weight: weight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
