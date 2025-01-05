//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var post = OnePost.mockData
    
    lazy var layout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .vertical
        $0.minimumLineSpacing = 30
        $0.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        return $0
    }(UICollectionViewFlowLayout())
    
    lazy var collectionView: UICollectionView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.dataSource = self
        $0.register(PostCellView.self, forCellWithReuseIdentifier: PostCellView.identifier)
        $0.contentInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        return $0
    }(UICollectionView(frame: .null, collectionViewLayout: layout))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collectionView)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }


}

