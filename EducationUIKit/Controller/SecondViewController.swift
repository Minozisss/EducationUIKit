//
//  SecondViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.12.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var cell: OnePosition?
    
    private lazy var scroll: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubview(scrollContent)
        return $0
    }(UIScrollView())
    
    private lazy var scrollContent: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(mainImage, price, name, hStack, vStack)
        return $0
    }(UIView())
    
    private lazy var mainImage = CustomImageView(radius: 0)
    
    private lazy var price = CustomLabel(clr: UIColor(red: 203/256, green: 22/256, blue: 63/256, alpha: 1), size: 35, weight: .black)
    private lazy var name = CustomLabel(clr: .black, size: 20, weight: .regular)
    
    private lazy var hStack: UIStackView = CustomStack(direction: .horizontal, dstr: .fillEqually, interval: 7)
    private lazy var favorites = CustomButton(title: "В избранное", clr: .black, size: 15, weight: .regular, radius: 12, r: 247, g: 247, b: 247, al: 1)
    private lazy var buy = CustomButton(title: "Купить", clr: .white, size: 15, weight: .regular, radius: 12, r: 3, g: 191, b: 111, al: 1)
    
    private lazy var vStack = CustomStack(direction: .vertical, dstr: .fillEqually, interval: 2)
    private lazy var type = CustomLabel(clr: UIColor(red: 117/256, green: 111/256, blue: 111/256, alpha: 1), size: 14, weight: .light)
    private lazy var OS = CustomLabel(clr: UIColor(red: 117/256, green: 111/256, blue: 111/256, alpha: 1), size: 14, weight: .light)
    private lazy var weight = CustomLabel(clr: UIColor(red: 117/256, green: 111/256, blue: 111/256, alpha: 1), size: 14, weight: .light)
    private lazy var proportions = CustomLabel(clr: UIColor(red: 117/256, green: 111/256, blue: 111/256, alpha: 1), size: 14, weight: .light)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scroll)
        hStack.addArrangedSubviews(favorites, buy)
        vStack.addArrangedSubviews(type, OS, weight, proportions)
        
        setupData()
    }
    
    func setupData() {
        if let image = cell?.image {
            mainImage.image = UIImage(named: image)
        }
        price.text = cell?.price
        name.text = cell?.name
        type.text = cell?.type
        OS.text = cell?.OS
        weight.text = cell?.weight
        proportions.text = cell?.proportions
        
        setupConstraint()
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            scroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scroll.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            scrollContent.topAnchor.constraint(equalTo: scroll.topAnchor),
            scrollContent.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            scrollContent.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            scrollContent.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            scrollContent.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            
            mainImage.topAnchor.constraint(equalTo: scrollContent.topAnchor),
            mainImage.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 400),
            
            price.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 20),
            price.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 20),
            price.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -20),
            
            name.topAnchor.constraint(equalTo: price.bottomAnchor, constant: 8),
            name.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 20),
            name.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -20),
            
            hStack.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 18),
            hStack.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 20),
            hStack.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -20),
            hStack.heightAnchor.constraint(equalToConstant: 42),
            
            vStack.topAnchor.constraint(equalTo: hStack.bottomAnchor, constant: 10),
            vStack.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor, constant: 20),
            vStack.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor, constant: -20),
            vStack.bottomAnchor.constraint(equalTo: scrollContent.bottomAnchor)
            
        ])
    }
    
}
