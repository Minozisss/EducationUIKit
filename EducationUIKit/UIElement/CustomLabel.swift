//
//  CustomLabel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit
final class CustomLabel: UILabel {
    init(size: CGFloat, weight: UIFont.Weight ) {
        super.init(frame: .null)
        translatesAutoresizingMaskIntoConstraints = false
        numberOfLines = 0
        textColor = .black
        font = .systemFont(ofSize: size, weight: weight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
