//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // 1. Добавить данные
    private let collectionData = OnePosition.data()
    
    // 3. Настраиваем нашу коллекцию
    lazy var layout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .vertical
        $0.itemSize = CGSize(width: view.frame.width / 2 - 30, height: 300)
        
        // Если $0.scrollDirection = .vertical, то это отступы по вертикали
        // Если $0.scrollDirection = .horizontal, то это отступы по горизонтали
        $0.minimumLineSpacing = 10 //Отступы между линиями ячеек
        
        // Если $0.scrollDirection = .vertical, то это отступы по горизонтали
        // Если $0.scrollDirection = .horizontal, то это отступы по вертикали
        $0.minimumInteritemSpacing = 0 // Отступы между ячейками в одной линии
        
        return $0
    }(UICollectionViewFlowLayout())
    
    // 2. Добавить коллекцию
    lazy var collectionView: UICollectionView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.dataSource = self
        $0.delegate = self
        $0.register(iphoneCell.self, forCellWithReuseIdentifier: iphoneCell.id)
        $0.contentInset = UIEdgeInsets(top: 10, left: 20, bottom: 0, right: 20)
        $0.backgroundColor = UIColor(red: 247/256, green: 247/256, blue: 247/256, alpha: 1)
        // $0.showsVerticalScrollIndicator = false - cкрыть индикатор скролла
        return $0
    }(UICollectionView(frame: .zero, collectionViewLayout: layout))
    // UICollectionViewFlowLayout - объект, который настраивает нашу коллекцию
    // UICollectionViewFlowLayout наследник UICollectionViewLayout. В нём много настроек
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collectionView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: iphoneCell.id, for: indexPath) as! iphoneCell
        // В UiTableView принято писать row, UICollectionView принято писать item
        let oneModel = collectionData[indexPath.item]
        cell.setupCell(onePhone: oneModel)
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionData[indexPath.item]
        let nextController = SecondViewController()
        
        nextController.cell = selectedCell
        navigationController?.pushViewController(nextController, animated: true)
    }
}
