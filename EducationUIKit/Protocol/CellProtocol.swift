//
//  CellProtocol.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import Foundation
protocol CellProtocol {
    static var reuseIdentifier: String { get }
    func setupCell(item: OneCell)
}
