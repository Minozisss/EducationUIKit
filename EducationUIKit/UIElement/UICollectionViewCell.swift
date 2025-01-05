//
//  UICollectionViewCell.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

class PostCellView: UICollectionViewCell {
    static let identifier: String = "PostCellView"
    
    lazy var photo: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var name = CustomLabel(size: 20, weight: .black)
    
    lazy var mainPhoto: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var vStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.spacing = 10
        $0.distribution = .fill
        $0.addArrangedSubviews(date, title, mainText)
        return $0
    }(UIStackView())
    
    lazy var date = CustomLabel(size: 14, weight: .light)
    lazy var title = CustomLabel(size: 22, weight: .black)
    lazy var mainText = CustomLabel(size: 16, weight: .regular)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubviews(photo, name, mainPhoto, vStack)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPost(post: OnePost) {
        photo.image = UIImage(named: post.photo)
        name.text = post.userName
        mainPhoto.image = UIImage(named: post.postPhoto)
        date.text = post.date
        title.text = post.title
        mainText.text = post.text
        
        setupConstraint()
    }
    
    func setupConstraint() {

        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            photo.heightAnchor.constraint(equalToConstant: 44),
            photo.widthAnchor.constraint(equalToConstant: 44),
            
            name.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            name.leadingAnchor.constraint(equalTo: photo.trailingAnchor, constant: 20),
            name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            mainPhoto.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 20),
            mainPhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            mainPhoto.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            mainPhoto.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 100),
            
            vStack.topAnchor.constraint(equalTo: mainPhoto.bottomAnchor, constant: 10),
            vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
    
    
}
