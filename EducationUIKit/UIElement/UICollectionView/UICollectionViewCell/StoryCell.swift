//
//  StoryCell.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

class StoryCell: UICollectionViewCell, CellProtocol, ConstraintProtocol {

    static let reuseIdentifier: String = "StoryCell"
    
    lazy var photo: UIImageView = CustomUiImageView(radius: 40)
    
    lazy var textLabel: UILabel = CustomLabel(size: 16, weight: .regular, nol: 1, alignment: .center, color: .black)
 
    override init(frame: CGRect) {
        super.init(frame: frame)
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
            photo.topAnchor.constraint(equalTo: contentView.topAnchor),
            photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            photo.widthAnchor.constraint(equalToConstant: 80),
            photo.heightAnchor.constraint(equalToConstant: 80),
            
            textLabel.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 5),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    
}
