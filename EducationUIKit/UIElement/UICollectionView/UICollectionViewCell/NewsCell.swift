//
//  NewsCell.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

class NewsCell: UICollectionViewCell, CellProtocol, ConstraintProtocol {
    static let reuseIdentifier: String = "NewsCell"
    
    lazy var photo: UIImageView = CustomUiImageView(radius: 15)
    lazy var title: UILabel = CustomLabel(size: 24, weight: .black, nol: 1, alignment: .left, color: .white)
    lazy var textLabel: UILabel = CustomLabel(size: 14, weight: .regular, nol: 2, alignment: .left, color: .white)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 15
        contentView.addSubview(photo)
        photo.addSubviews(title, textLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: OneCell) {
        photo.image = UIImage(named: item.photo)
        title.text = item.title
        textLabel.text = item.text
        
        setupConstraint()
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: contentView.topAnchor),
            photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            photo.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            photo.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            
            title.topAnchor.constraint(equalTo: photo.topAnchor, constant: 25),
            title.leadingAnchor.constraint(equalTo: photo.leadingAnchor, constant: 25),
            title.trailingAnchor.constraint(equalTo: photo.trailingAnchor, constant: -25),
            
            textLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 40),
            textLabel.leadingAnchor.constraint(equalTo: photo.leadingAnchor, constant: 25),
            textLabel.trailingAnchor.constraint(equalTo: photo.trailingAnchor, constant: -25),
            textLabel.bottomAnchor.constraint(equalTo: photo.bottomAnchor, constant: -20)
        ])
    }
}
