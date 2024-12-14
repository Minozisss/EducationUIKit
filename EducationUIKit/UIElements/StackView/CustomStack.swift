//
//  CustomScroll.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.12.2024.
//

import UIKit

class CustomStack: UIStackView {
    init(direction: NSLayoutConstraint.Axis, dstr: UIStackView.Distribution, interval: CGFloat) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        axis = direction
        distribution = dstr
        spacing = interval
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
