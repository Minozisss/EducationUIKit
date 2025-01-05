//
//  StackView.ext.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach{
            self.addArrangedSubview($0)
        }
    }
}
