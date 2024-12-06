//
//  CustomTable.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import UIKit
// Это очень сложная таблица с кастомными ячейками
class InformationPost: UITableViewCell {
    static let id = "123"
    
    private lazy var backView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 244/256, green: 244/256, blue: 244/256, alpha: 1)
        $0.layer.cornerRadius = 30
        $0.addSubviews(mainImage, hStack, btn)
        
        return $0
    }(UIView())
    
    private lazy var mainImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.contentMode = .scaleToFill
        $0.addSubviews(nameAndSurname, miniText)
        return $0
    }(UIImageView())
    
    private lazy var nameAndSurname = CustomLabel(color: .white, lines: 0, size: 20, weight: .black)
    private lazy var miniText = CustomLabel(color: .white, lines: 0, size: 14, weight: .regular)
    
    private lazy var hStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 244/256, green: 244/256, blue: 244/256, alpha: 1)
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.spacing = 10
        $0.alignment = .fill
        
        
        return $0
    }(UIStackView())
    
    private lazy var btn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Показать детали", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 25
        return $0
    }(UIButton())
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(backView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(onePost: DataToTable) {
        nameAndSurname.text = onePost.nameAndSurname
        miniText.text = onePost.description
        //MARK: Тут про массив для стека написать
        onePost.miniImages.forEach {
            let imageView = ImageToStack(image: UIImage(named: $0))
            hStack.addArrangedSubview(imageView)
        }
        mainImage.image = UIImage(named: onePost.mainImage)
        
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 18),
            backView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -18),
            
            mainImage.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 25),
            mainImage.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -25),
            mainImage.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15),
            mainImage.heightAnchor.constraint(equalToConstant: 163),
            
            nameAndSurname.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 20),
            nameAndSurname.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -20),
            nameAndSurname.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 70),
            
            miniText.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 20),
            miniText.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -20),
            miniText.topAnchor.constraint(equalTo: nameAndSurname.bottomAnchor, constant: 4),
            miniText.bottomAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: -15),
            
            hStack.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 25),
            hStack.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -25),
            hStack.heightAnchor.constraint(equalToConstant: 100),
            hStack.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 15),
            
            btn.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 25),
            btn.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -25),
            btn.topAnchor.constraint(equalTo: hStack.bottomAnchor, constant: 15),
            btn.heightAnchor.constraint(equalToConstant: 50),
            btn.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -15)
        ])
    }
    
}

