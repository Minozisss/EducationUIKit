//
//  SecondViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var ourCell: DataToTable?

    lazy var scroll: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubview(scrollContent)
        return $0
    }(UIScrollView())
    
    lazy var scrollContent: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(mainImage, hStack, text)
        return $0
    }(UIView())
    
    lazy var mainImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
        
    lazy var hStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.distribution = .equalSpacing
        $0.spacing = 20
        $0.addArrangedSubviews(nameAndSurname, date)
        return $0
    }(UIStackView())

    lazy var nameAndSurname = CustomLabel(color: .black, lines: 1, size: 20, weight: .black)
    lazy var date = CustomLabel(color: .black, lines: 1, size: 14, weight: .regular)
    lazy var text = CustomLabel(color: .black, lines: 0, size: 14, weight: .regular)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scroll)
        setupData()
    }
    
    private func setupData() {
        nameAndSurname.text = ourCell?.nameAndSurname
        date.text = ourCell?.date
        if let image = ourCell?.mainImage {
            mainImage.image = UIImage(named: image)
        }
        text.text = ourCell?.text

        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scroll.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            scrollContent.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            scrollContent.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            scrollContent.topAnchor.constraint(equalTo: scroll.topAnchor),
            scrollContent.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            scrollContent.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            
            mainImage.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 30),
            mainImage.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -30),
            mainImage.topAnchor.constraint(equalTo: scrollContent.topAnchor, constant: 60),
            mainImage.heightAnchor.constraint(equalToConstant: 171),
            
            hStack.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 30),
            hStack.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -30),
            hStack.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 24),
            
            text.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 30),
            text.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -30),
            text.topAnchor.constraint(equalTo: hStack.bottomAnchor, constant: 18),
            text.bottomAnchor.constraint(equalTo: scrollContent.bottomAnchor, constant: -60)
        ])
    }

}
