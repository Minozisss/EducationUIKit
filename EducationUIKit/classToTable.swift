//
//  classToTable.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 02.12.2024.
//

import UIKit

class InformationPost: UITableViewCell {
    static let id: String = "123"
    
    private lazy var backView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 217/256, green: 217/256, blue: 217/256, alpha: 1)
        $0.layer.cornerRadius = 30
        $0.addSubviews(nameAndSurname, postImage, title, date, text, nextButton)
        return $0
    }(UIView())
    
    private lazy var nameAndSurname: UILabel = createLable(size: 20, weight: .black)
    
    private lazy var postImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFit
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        return $0
    }(UIImageView())
    
    private lazy var title: UILabel = createLable(size: 20, weight: .black)
    private lazy var date: UILabel = createLable(size: 12, weight: .regular)
    private lazy var text: UILabel = createLable(size: 16, weight: .regular)

    private lazy var nextButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Дальше", for: .normal)
        $0.backgroundColor = UIColor(red: 37/256, green: 169/256, blue: 82/256, alpha: 1)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        $0.titleLabel?.textColor = .white
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(backView)
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createLable(size: CGFloat, weight: UIFont.Weight) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: size, weight: weight)
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }
    
    func setupCell(post: DataToTable) {
        nameAndSurname.text = post.nameAndSurname
        postImage.image = UIImage(named: post.image)
        title.text = post.title
        date.text = post.date
        text.text = post.text
        
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            backView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            backView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            backView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            nameAndSurname.topAnchor.constraint(equalTo: backView.topAnchor, constant: 20),
            nameAndSurname.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 36),
            nameAndSurname.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -36),
            
            postImage.topAnchor.constraint(equalTo: nameAndSurname.bottomAnchor, constant: 21),
            postImage.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 20),
            postImage.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -20),
            postImage.heightAnchor.constraint(equalToConstant: 200),
            
            title.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 9),
            title.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 36),
            title.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -36),
            
            date.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 3),
            date.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 36),
            date.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -36),
            
            text.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 14),
            text.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 20),
            text.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -20),
            
            nextButton.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 38),
            nextButton.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 20),
            nextButton.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -20),
            nextButton.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -20),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
