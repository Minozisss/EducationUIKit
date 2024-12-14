//
//  CustomCollection.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 13.12.2024.
//

import UIKit

class iphoneCell: UICollectionViewCell {
    
    static let id = "123"
    
    private lazy var mainImage = CustomImageView(radius: 10)
    
    private lazy var price = CustomLabel(clr: UIColor(red: 203/256, green: 22/256, blue: 63/256, alpha: 1), size: 15, weight: .medium)
    private lazy var name = CustomLabel(clr: .black, size: 15, weight: .light)

    private lazy var saveImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(systemName: "bookmark")
        $0.tintColor = .gray
        return $0
    }(UIImageView())
    
    private lazy var btn = CustomButton(title: "Купить", clr: .white, size: 10, weight: .regular, radius: 10, r: 3, g: 191, b: 11, al: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        contentView.addSubviews(mainImage, price, name, saveImage, btn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(onePhone: OnePosition) {
        mainImage.image = UIImage(named: onePhone.image)
        price.text = onePhone.price
        name.text = onePhone.name
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            mainImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 200),
            
            price.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 5),
            price.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            price.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            
            saveImage.topAnchor.constraint(equalTo: price.topAnchor),
            saveImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            saveImage.widthAnchor.constraint(equalToConstant: 15),
            saveImage.heightAnchor.constraint(equalToConstant: 15),
            
            name.topAnchor.constraint(equalTo: price.bottomAnchor, constant: 5),
            name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            btn.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 5),
            btn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 7),
            btn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -7),
            btn.heightAnchor.constraint(equalToConstant: 22),
            btn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
            
        ])
    }
}
