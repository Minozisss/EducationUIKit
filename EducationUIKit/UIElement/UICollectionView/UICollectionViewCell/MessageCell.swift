//
//  MessageCell.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

class MessageCell: UICollectionViewCell, CellProtocol, ConstraintProtocol {
    
    static let reuseIdentifier: String = "MessageCell"
    
    lazy var photo: UIImageView = CustomUiImageView(radius: 20)
    lazy var textLabel: UILabel = CustomLabel(size: 14, weight: .regular, nol: 3, alignment: .left, color: .black)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 15
        contentView.backgroundColor = UIColor(red: 217/257, green: 217/257, blue: 217/257, alpha: 1)
        contentView.addSubviews(photo, textLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: OneCell) {
        photo.image = UIImage(named: item.photo)
        textLabel.text = item.text
        
        setupConstraint()
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photo.widthAnchor.constraint(equalToConstant: 61),
            photo.heightAnchor.constraint(equalToConstant: 61),
            
            textLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            textLabel.leadingAnchor.constraint(equalTo: photo.trailingAnchor, constant: 12),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
        ])
    }
    
}
