//
//  UIView.ex.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import UIKit
// Чтобы добавлять много view сразу
extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}


