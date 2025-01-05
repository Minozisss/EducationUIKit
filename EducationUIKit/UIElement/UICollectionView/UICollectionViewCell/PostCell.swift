//
//  PostCell.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

class PostCell: UICollectionViewCell, CellProtocol, ConstraintProtocol {
    
    static let reuseIdentifier: String = "PostCell"
    
    lazy var photo: UIImageView = CustomUiImageView(radius: 15)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 15
        contentView.addSubview(photo)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: OneCell) {
        photo.image = UIImage(named: item.photo)
        
        setupConstraint()
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: contentView.topAnchor),
            photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            photo.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            photo.heightAnchor.constraint(equalTo: contentView.heightAnchor)
    ])}
}
