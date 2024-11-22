//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var width = view.frame.width
    
    lazy var blueBg = createView(red: 0, green: 123, blue: 252, alpha: 1, radius: 0, x: 0, y: 0, width: width, height: 335)
    lazy var house = createImageView(imageName: "house", contMode: .scaleAspectFit, red: 0, green: 123, blue: 252, alpha: 1, radius: 0, clips: false, x: 20, y: 35, width: 92, height: 35)
    lazy var mainText = createLabel(text: "Сервис квартирных решений от сделки до отделки", color: .white, lines: 2, size: 21, weight: .black, x: 20, y: house.frame.maxY + 20, width: width - 90, height: 56)
    
    lazy var btn = {
        $0.backgroundColor = UIColor(red: 255/256, green: 255/256, blue: 255/256, alpha: 1)
        $0.layer.cornerRadius = 10
        $0.frame = CGRect(x: 14, y: mainText.frame.maxY + 22, width: width - 28, height: 135)
        return $0
    }(UIButton(primaryAction: UIAction(handler: { [weak self] _ in
        guard let self else { return }
        //Для того чтобы открыть следующий viewController
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    })))
    lazy var btnImage = createImageView(imageName: "point", contMode: .scaleAspectFill, red: 255, green: 255, blue: 255, alpha: 1, radius: 0, clips: false, x: btn.frame.maxX - 20 , y: btn.frame.minY + 15, width: 10, height: 10)
    lazy var buyLabal = createLabel(text: "Купить", color: .black, lines: 1, size: 15, weight: .bold, x: 12, y: 14, width: width - 28, height: 20)
    lazy var extraBuyLabel = createLabel(text: "Подберём подходящий объект", color: .black, lines: 2, size: 14, weight: .light, x: 12, y: buyLabal.frame.maxY + 2, width: btn.frame.size.width / 2, height: 40)
    
    lazy var services = createLabel(text: "Услуги", color: .black, lines: 1, size: 25, weight: .black, x: 17, y: blueBg.frame.maxY + 35 , width: width - 34, height: 25)
    
    lazy var insuranceBg = createView(red: 230, green: 237, blue: 255, alpha: 1, radius: 10, x: 17, y: services.frame.maxY + 17, width: width - 34, height: 95)
    lazy var insurance = createLabel(text: "Cтрахование", color: .black, lines: 1, size: 13, weight: .bold, x: 18, y: 23, width: insuranceBg.frame.size.width / 2, height: 15)
    lazy var extraInsurance = createLabel(text: "Защитите имущество здоровье и жизнь", color: .black, lines: 2, size: 13, weight: .light, x: 18, y: insurance.frame.maxY + 2, width: 150, height: 40)
    
    lazy var residentialComplex = createLabel(text: "Жилые комплексы", color: .black, lines: 1, size: 25, weight: .black, x: 17, y: insuranceBg.frame.maxY + 30, width: width - 34, height: 25)
    
    lazy var quarterBg = createView(red: 248, green: 248, blue: 248, alpha: 1, radius: 10, x: 17, y: residentialComplex.frame.maxY + 25, width: width - 34, height: 200)
    lazy var quarterImage = createImageView(imageName: "littleQuarter", contMode: .scaleAspectFit, red: 256, green: 256, blue: 256, alpha: 1, radius: 10, clips: true, x: 0, y: 0, width: quarterBg.frame.size.width, height: 122)
    lazy var quarterName = createLabel(text: "Ольховый Квартал", color: .black, lines: 1, size: 14, weight: .black, x: 12, y: quarterImage.frame.maxY + 9, width: quarterBg.frame.size.width - 24, height: 12)
    lazy var quarterPrice = createLabel(text: "от 8 029 445 ₽", color: .black, lines: 1, size: 14, weight: .black, x: 12, y: quarterName.frame.maxY + 9, width: quarterBg.frame.size.width - 24, height: 12)
    lazy var quarterPlace = createLabel(text: "Москва, поселение Сосенское, деревня Столбово", color: .black, lines: 1, size: 14, weight: .light, x: 12, y: quarterPrice.frame.maxY + 9, width: quarterBg.frame.size.width - 24, height: 12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(blueBg)
        view.addSubview(house)
        blueBg.addSubview(mainText)
        blueBg.addSubview(btn)
        view.addSubview(btnImage)
        btn.addSubview(buyLabal)
        btn.addSubview(extraBuyLabel)
        view.addSubview(services)
        view.addSubview(insuranceBg)
        insuranceBg.addSubview(insurance)
        insuranceBg.addSubview(extraInsurance)
        view.addSubview(residentialComplex)
        view.addSubview(quarterBg)
        quarterBg.addSubview(quarterImage)
        quarterBg.addSubview(quarterName)
        quarterBg.addSubview(quarterPrice)
        quarterBg.addSubview(quarterPlace)
        
    }
    
    private func createLabel(text: String, color: UIColor, lines: Int, size: CGFloat, weight: UIFont.Weight, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = color
        label.numberOfLines = lines
        label.font = .systemFont(ofSize: size, weight: weight)
        label.frame = CGRect(x: x, y: y, width: width, height: height)
        return label
    }
    
    private func createImageView(imageName: String, contMode: UIView.ContentMode, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat, radius: CGFloat, clips: Bool, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: imageName)
        imageView.contentMode = contMode
        imageView.backgroundColor = UIColor(red: red/256, green: green/256, blue: blue/256, alpha: alpha)
        imageView.layer.cornerRadius = radius
        imageView.clipsToBounds = clips
        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        
        return imageView
    }
    
    private func createView(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat, radius: CGFloat, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor(red: red/256, green: green/256, blue: blue/256, alpha: alpha)
        view.frame = CGRect(x: x, y: y, width: width, height: height)
        view.layer.cornerRadius = radius
        
        return view
    }
    
        
       


}

