//
//  UIView.ext.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach{
            self.addSubview($0)
        }
    }
}
