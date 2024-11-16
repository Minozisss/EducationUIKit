//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var width = view.frame.width
    lazy var height = view.frame.height
    
    var safeButton = UIButton()
    var editButton = UIButton()
    
    var capUIImageView = UIImageView()
    var mainUIImageView = UIImageView()
    
    var nameLabel = UILabel()
    var descriptionLabel = UILabel()
    
    var aboutMeTextField = UITextView()
    var changeLabel = UILabel()
    
    var oldPasswordTextField = UITextField()
    var newPasswordTextField = UITextField()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        safeButton = createButton(title: "Сохранить", titleColor: .white, bg: .blue, radius: 10, x: 30, y: height - 130, width: width - 60, height: 55)
 
        capUIImageView = createUIImageView(bg: .gray, imageName: "thai", x: 0, y: 0, width: width, height: 156)
        mainUIImageView = createUIImageView(bg: .gray, radius: 50, imageName: "maksim", x: 30, y: capUIImageView.frame.maxY + 30, width: 100, height: 100, clip: true, contentMode: .scaleAspectFill)
        
        nameLabel = createLabel(text: "Максим Кудрявцев", textColor: .black, textSize: 20, textWeifht: .black, x: mainUIImageView.frame.maxX + 10, y: mainUIImageView.frame.minY + 10, width: width, height: 50)
        descriptionLabel = createLabel(text: "Добавить описание", textColor: .black, textSize: 15, textWeifht: .medium, x: 30, y: mainUIImageView.frame.maxY + 50, width: width - 60, height: 20)
        
        editButton = createButton(title: "Редактировать", titleColor: .white, bg: .blue, radius: 10, x: mainUIImageView.frame.maxX + 10, y: nameLabel.frame.maxY + 5, width: width - 2 * mainUIImageView.frame.maxX, height: 34)
        
        aboutMeTextField = createUITextView(textColor: .black, bg: .lightGray, radius: 10, x: 30, y: descriptionLabel.frame.maxY + 5, width: width - 60, height: 150)
        
        changeLabel = createLabel(text: "Изменить пароль", textColor: .black, textSize: 15, textWeifht: .medium, x: 30, y: aboutMeTextField.frame.maxY + 20, width: width - 60, height: 20)
        
        oldPasswordTextField = createTextField(placeholder: "Старый пароль", radius: 10, textColor: .black, bg: .lightGray, x: 30, y: changeLabel.frame.maxY + 5, width: width - 60, height: 52, isPassword: false)
        newPasswordTextField = createTextField(placeholder: "Новый пароль", radius: 10, textColor: .black, bg: .lightGray, x: 30, y: oldPasswordTextField.frame.maxY + 5, width: width - 60, height: 52, isPassword: true)
        
        view.addSubview(safeButton)
        view.addSubview(capUIImageView)
        view.addSubview(mainUIImageView)
        view.addSubview(nameLabel)
        view.addSubview(editButton)
        view.addSubview(descriptionLabel)
        view.addSubview(aboutMeTextField)
        view.addSubview(changeLabel)
        view.addSubview(oldPasswordTextField)
        view.addSubview(newPasswordTextField)
    }
    
    private func createButton(title: String, titleColor: UIColor, bg: UIColor, radius: CGFloat, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = bg
        button.layer.cornerRadius = radius
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        return button
    }
    
    private func createTextField(placeholder: String, radius: CGFloat, textColor: UIColor, bg: UIColor, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, isPassword: Bool) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.layer.cornerRadius = radius
        textField.textColor = textColor
        textField.backgroundColor = bg
        textField.frame = CGRect(x: x, y: y, width: width, height: height)
        textField.isSecureTextEntry = isPassword
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        return textField
    }
    
    private func createLabel(text: String, textColor: UIColor, textSize: CGFloat, textWeifht: UIFont.Weight, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = .systemFont(ofSize: textSize, weight: textWeifht)
        label.frame = CGRect(x: x, y: y, width: width, height: height)
        return label
    }
    
    private func createUIImageView(bg: UIColor, radius: CGFloat = 0, imageName: String, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, clip: Bool = false, contentMode: UIView.ContentMode = .scaleToFill) -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = bg
        imageView.image = UIImage(named: imageName)
        imageView.layer.cornerRadius = radius
        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        imageView.clipsToBounds = clip
        imageView.contentMode = contentMode
        return imageView
    }
    
    private func createUITextView(textColor: UIColor, bg: UIColor, radius: CGFloat, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UITextView {
        let textView = UITextView()
        textView.textColor = textColor
        textView.backgroundColor = bg
        textView.layer.cornerRadius = radius
        textView.frame = CGRect(x: x, y: y, width: width, height: height)

        return textView
    }

}

