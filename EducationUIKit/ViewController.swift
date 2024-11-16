//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {

    var dataButton = UIButton()
    var cleanerButton = UIButton()
    var nameLabel = UILabel()
    var redNameLabel = UILabel()
    var surnameLabel = UILabel()
    var redSurnameLabel = UILabel()
    var numberLabel = UILabel()
    var redNumberLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataButtonCreate()
        cleanerButtonCreate()
        setNameLabel()
        setRedNameLabel()
        setSurnameLabel()
        setRedSurnameLabel()
        setNumberLabel()
        setRedNumberLabel()
        
    }

    func dataButtonCreate() {
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        dataButton.setTitle("Добавить данные", for: .normal)
        dataButton.setTitleColor(.white, for: .normal)
        dataButton.backgroundColor = .black
        dataButton.layer.cornerRadius = 20
        dataButton.frame = CGRect(x: 30, y: height - 200, width: width - 60, height: 50)
        
        view.addSubview(dataButton)
    }
    
    func cleanerButtonCreate() {
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        cleanerButton.setTitle("Очистить данные", for: .normal)
        cleanerButton.setTitleColor(.blue, for: .normal)
        cleanerButton.backgroundColor = .white
        cleanerButton.layer.cornerRadius = 20
        cleanerButton.frame = CGRect(x: 30, y: height - 150, width: width - 60, height: 50)
        
        view.addSubview(cleanerButton)
    }
    
    func setNameLabel() {

        nameLabel.text = "Имя:"
        nameLabel.textColor = .black
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        nameLabel.numberOfLines = 0
        nameLabel.frame = CGRect(x: 30, y: 100, width: 200, height: 50)
        
        
        view.addSubview(nameLabel)
    }
    
    func setRedNameLabel() {
        
        redNameLabel.text = "Максим"
        redNameLabel.textColor = .red
        redNameLabel.numberOfLines = 0
        redNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        redNameLabel.frame = CGRect(x: 85, y: 100, width: 200, height: 50)
        
        view.addSubview(redNameLabel)
    }
    
    func setSurnameLabel() {
        
        surnameLabel.text = "Фамилия:"
        surnameLabel.textColor = .black
        surnameLabel.numberOfLines = 0
        surnameLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        surnameLabel.frame = CGRect(x: 30, y: 150, width: 200, height: 50)
        
        view.addSubview(surnameLabel)
    }
    
    func setRedSurnameLabel() {
        redSurnameLabel.text = "Кудрявцев"
        redSurnameLabel.textColor = .red
        redSurnameLabel.numberOfLines = 0
        redSurnameLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        redSurnameLabel.frame = CGRect(x: 140, y: 150, width: 200, height: 50)
        
        view.addSubview(redSurnameLabel)
    }
    
    func setNumberLabel() {
        numberLabel.text = "Номер потока:"
        numberLabel.textColor = .black
        numberLabel.numberOfLines = 0
        numberLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        numberLabel.frame = CGRect(x: 30, y: 200, width: 200, height: 50)
        
        view.addSubview(numberLabel)
    }
    
    func setRedNumberLabel() {
        redNumberLabel.text = "ios 9"
        redNumberLabel.textColor = .red
        redNumberLabel.numberOfLines = 0
        redNumberLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        redNumberLabel.frame = CGRect(x: 190, y: 200, width: 200, height: 50)
        
        view.addSubview(redNumberLabel)
    }

}

