//
//  view.ext.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.12.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach{
            self.addSubview($0)
        }
    }
}

