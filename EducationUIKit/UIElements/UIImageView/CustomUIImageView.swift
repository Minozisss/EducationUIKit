//
//  CustomUIImageView.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import UIKit
// Используется для добавления image в Stack
class ImageToStack: UIImageView {
    override init(image: UIImage?) {
        super.init(image: image)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        contentMode = .scaleAspectFill
        layer.cornerRadius = 20
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
