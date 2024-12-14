//
//  CustomImageView.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.12.2024.
//

import UIKit

class CustomImageView: UIImageView {
    init(radius: CGFloat) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = radius
        contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
