//
//  SecondViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 22.11.2024.
//

import UIKit

class SecondViewController: UIViewController {
    lazy var width = view.frame.width
    lazy var house = createImageView(imageName: "house", contMode: .scaleAspectFill, red: 0, green: 123, blue: 252, alpha: 1, radius: 0, clips: false, x: 20, y: 35, width: 92, height: 35)
    lazy var quarter = createImageView(imageName: "bigQuarter", contMode: .scaleAspectFill, red: 0, green: 0, blue: 0, alpha: 1, radius: 10, clips: true, x: 14, y: mainLabel.frame.maxY + 28, width: width - 28, height: 240)
    
    lazy var mainLabel = createLabel(text: "Ольховый Квартал", color: .white, lines: 1, size: 24, weight: .black, x: 14, y: house.frame.maxY + 33, width: width - 28, height: 30)
    lazy var priceLabel = createLabel(text: "от 8 029 445 ₽", color: .white, lines: 1, size: 14, weight: .black, x: 14, y: quarter.frame.maxY + 22, width: width - 28, height: 15)
    lazy var placeLabel = createLabel(text: "Москва, поселение Сосенское, деревня Столбово", color: .white, lines: 1, size: 14, weight: .light, x: 14, y: priceLabel.frame.maxY + 9, width: width - 28, height: 15)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0/256, green: 123/256, blue: 252/256, alpha: 1)

        view.addSubview(house)
        view.addSubview(mainLabel)
        view.addSubview(quarter)
        view.addSubview(priceLabel)
        view.addSubview(placeLabel)
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
    
    
    private func createLabel(text: String, color: UIColor, lines: Int, size: CGFloat, weight: UIFont.Weight, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = color
        label.numberOfLines = lines
        label.font = .systemFont(ofSize: size, weight: weight)
        label.frame = CGRect(x: x, y: y, width: width, height: height)
        return label
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
