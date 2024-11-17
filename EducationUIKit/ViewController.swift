//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var width = view.frame.width
    
    var appNameLabel = UILabel()
    var mainPhoto = UIImageView()
    var personNameLabel = UILabel()
    var personAgeLabel = UILabel()
    var writeMeButton = UIButton()
    var dislikeButton = UIButton()
    var likeButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        appNameLabel = createLabel(text: "ПоLoveИнки", textColor: .black, size: 30, weight: .black, x: 30, y: 100, width: width - 60, height: 40)
        
        
        
        mainPhoto = createUIImageView(image: "maksim", radius: 30, bgColor: .lightGray, x: 30, y: appNameLabel.frame.maxY + 10, width: width - 60, height: 392, mode: .scaleAspectFill)
        personNameLabel = createLabel(text: "Максим Кудрявцев", textColor: .white, size: 20, weight: .black, x: mainPhoto.frame.minX + 20, y: mainPhoto.frame.maxY - 70, width: mainPhoto.frame.maxX - 40, height: 20)
        personAgeLabel = createLabel(text: "21 год", textColor: .white, size: 16, weight: .light, x: personNameLabel.frame.minX, y: personNameLabel.frame.maxY + 5, width: mainPhoto.frame.maxX - 40, height: 20)
        
        
        
        writeMeButton = createButton(title: "Написать", titleColor: .white, size: 16, radius: 20, x: view.frame.width / 2 - mainPhoto.frame.width / 4, y: mainPhoto.frame.maxY + 20, width: mainPhoto.frame.width / 2, height: 50)
        dislikeButton = createButton(title: nil, titleColor: nil, size: nil, bgColor: .gray, radius: 50, x: 30, y: writeMeButton.frame.minY - 8, width: writeMeButton.frame.width / 3, height: writeMeButton.frame.height + 16)
        likeButton = createButton(title: nil, titleColor: nil, size: nil, bgColor: .gray, radius: 50, x: width - 30 - writeMeButton.frame.width / 3, y: writeMeButton.frame.minY - 8, width: writeMeButton.frame.width / 3, height: writeMeButton.frame.height + 16)
        
        writeMeButton.backgroundColor = UIColor(red: 37/256, green: 169/256, blue: 82/256, alpha: 1)
        
        let dislike = UIImage(named: "dislike")
        let like = UIImage(named: "like")
        dislikeButton.setImage(dislike, for: .normal)
        likeButton.setImage(like, for: .normal)
        
        view.addSubview(appNameLabel)
        view.addSubview(mainPhoto)
        view.addSubview(personNameLabel)
        view.addSubview(personAgeLabel)
        view.addSubview(writeMeButton)
        view.addSubview(dislikeButton)
        view.addSubview(likeButton)
    }
    
    private func createLabel(text: String, textColor: UIColor, size: CGFloat, weight: UIFont.Weight, x: CGFloat, y:CGFloat, width: CGFloat, height: CGFloat ) -> UILabel {
        let label = UILabel()
        
        label.text = text
        label.textColor = textColor
        label.font = .systemFont(ofSize: size, weight: weight)
        label.frame = CGRect(x: x, y: y, width: width, height: height)

        return label
    }
    
    private func createUIImageView(image: String, radius: CGFloat, bgColor: UIColor, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, mode: UIView.ContentMode)-> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = bgColor
        imageView.image = UIImage(named: image)
        imageView.layer.cornerRadius = radius
        imageView.clipsToBounds = true
        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        imageView.contentMode = mode
        
        return imageView
    }
    
    private func createButton(title: String?, titleColor: UIColor?, size: CGFloat?, bgColor: UIColor = .blue, radius: CGFloat, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat ) -> UIButton {
        let button = UIButton()
        if title != nil{
            let title = title
            button.setTitle(title, for: .normal)
            let titleColor = titleColor
            button.setTitleColor(titleColor, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: size ?? 0)
        }
        button.backgroundColor = bgColor
        button.layer.cornerRadius = radius
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        
        return button
    }


}

