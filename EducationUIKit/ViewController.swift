//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dateToTable.dateUser().count
        default:
            return dateToTable.dateGroup().count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        var localArray: [dateToTable] = []
            
        switch indexPath.section {
            case 0:
                localArray = dateToTable.dateUser()
            default:
                localArray = dateToTable.dateGroup()
        }
        
        config.text = localArray[indexPath.row].name
        config.secondaryText = localArray[indexPath.row].descriptionText
        config.image = UIImage(named: localArray[indexPath.row].image)
        config.imageProperties.maximumSize = CGSize(width: 24, height: 24)
        config.imageProperties.reservedLayoutSize = CGSize(width: 24, height: 24)
        
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Чаты с друзьями"
        default:
            return "Групповые чаты"
        }
    }
    
}
