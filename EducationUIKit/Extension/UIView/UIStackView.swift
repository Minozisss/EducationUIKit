//
//  UIStackView.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import UIKit
// Чтобы добавлять в Stack много view сразу
extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach {
            self.addArrangedSubview($0)
        }
    }
}
