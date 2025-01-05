//
//  UIImage.ext.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

extension UIImage{
        func getRatio() -> CGFloat? {
            return self.size.height / self.size.width
        }
    }
