//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var mainImage = createImageView(imageName: "maksim", contMode: .scaleAspectFill, red: 1, green: 1, blue: 1, alpha: 1, radius: 30, clips: true)
    lazy var nameAndSurname = createLabel(text: "Максим Кудрявцев", color: .black, lines: 1, size: 16, weight: .black)
    
    lazy var bgPhoto: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(red: 217/256, green: 217/256, blue: 217/256, alpha: 1)
        $0.layer.cornerRadius = 30
        return $0
    }(UIView())
    lazy var photo = createImageView(imageName: "corgi", contMode: .scaleAspectFill, red: 1, green: 1, blue: 1, alpha: 1, radius: 30, clips: true)
    lazy var namePhoto = createLabel(text: "Прогулки с Корги", color: .white, lines: 0, size: 20, weight: .black)
    
    lazy var heading = createLabel(text: "А вы любите корги?", color: .black, lines: 1, size: 20, weight: .black)
    lazy var textUnderHeading = createLabel(text: "9/10 опрошенных хотят завести себе корги, а 10й это сам корги, и он хочет, чтобы его забрали домой", color: .black, lines: 3, size: 16, weight: .light)
    
    lazy var btn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Следующая новость", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        //$0.titleLabel.font = .systemFont(ofSize: 16, weight: .bold)
        $0.backgroundColor = UIColor(red: 37/256, green: 169/256, blue: 82/256, alpha: 1)
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(mainImage)
        view.addSubview(nameAndSurname)
        view.addSubview(bgPhoto)
        
        bgPhoto.addSubview(photo)
        bgPhoto.addSubview(heading)
        bgPhoto.addSubview(textUnderHeading)
        bgPhoto.addSubview(btn)
        
        photo.addSubview(namePhoto)
        
        setConstraints()
    }
    
    private func createImageView(imageName: String, contMode: UIView.ContentMode, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat, radius: CGFloat, clips: Bool) -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: imageName)
        imageView.contentMode = contMode
        imageView.backgroundColor = UIColor(red: red/256, green: green/256, blue: blue/256, alpha: alpha)
        imageView.layer.cornerRadius = radius
        imageView.clipsToBounds = clips
        
        return imageView
    }
    
    
    private func createLabel(text: String, color: UIColor, lines: Int, size: CGFloat, weight: UIFont.Weight) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = color
        label.numberOfLines = lines
        label.font = .systemFont(ofSize: size, weight: weight)

        return label
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            mainImage.widthAnchor.constraint(equalToConstant: 63),
            mainImage.heightAnchor.constraint(equalToConstant: 63),
            mainImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            
            nameAndSurname.leadingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 22),
            nameAndSurname.heightAnchor.constraint(equalToConstant: 19),
            nameAndSurname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            nameAndSurname.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 66),
            
            bgPhoto.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            bgPhoto.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            bgPhoto.heightAnchor.constraint(equalToConstant: 490),
            bgPhoto.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 32),
            
            photo.leadingAnchor.constraint(equalTo: bgPhoto.leadingAnchor, constant: 20),
            photo.trailingAnchor.constraint(equalTo: bgPhoto.trailingAnchor, constant: -20),
            photo.heightAnchor.constraint(equalToConstant: 240),
            photo.topAnchor.constraint(equalTo: bgPhoto.topAnchor, constant: 20),
            
            heading.leadingAnchor.constraint(equalTo: bgPhoto.leadingAnchor, constant: 36),
            heading.trailingAnchor.constraint(equalTo: bgPhoto.trailingAnchor, constant: -36),
            heading.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 21),
            
            textUnderHeading.leadingAnchor.constraint(equalTo: bgPhoto.leadingAnchor, constant: 20),
            textUnderHeading.trailingAnchor.constraint(equalTo: bgPhoto.trailingAnchor, constant: -20),
            textUnderHeading.topAnchor.constraint(equalTo: heading.bottomAnchor, constant: 12),
            textUnderHeading.heightAnchor.constraint(equalToConstant: 60),
            
            btn.leadingAnchor.constraint(equalTo: bgPhoto.leadingAnchor, constant: 20),
            btn.trailingAnchor.constraint(equalTo: bgPhoto.trailingAnchor, constant: -20),
            btn.bottomAnchor.constraint(equalTo: bgPhoto.bottomAnchor, constant: -40),
            btn.heightAnchor.constraint(equalToConstant: 50),
            
            namePhoto.leadingAnchor.constraint(equalTo: photo.leadingAnchor, constant: 20),
            namePhoto.trailingAnchor.constraint(equalTo: photo.trailingAnchor, constant: -20),
            namePhoto.bottomAnchor.constraint(equalTo: photo.bottomAnchor, constant: -40),
            namePhoto.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        
    }

}

