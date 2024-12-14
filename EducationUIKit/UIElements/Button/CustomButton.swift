//
//  CustomButton.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.12.2024.
//

import UIKit

class CustomButton: UIButton {
    init(title: String, clr: UIColor, size: CGFloat, weight: UIFont.Weight, radius: CGFloat, r: CGFloat, g: CGFloat, b: CGFloat, al: CGFloat) {
        super.init(frame: .null)
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(title, for: .normal)
        setTitleColor(clr, for: .normal)
        titleLabel?.font = .systemFont(ofSize: size, weight: weight)
        layer.cornerRadius = radius
        backgroundColor = UIColor(red: r/256, green: g/256, blue: b/256, alpha: al)
        
    }
        
        
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
