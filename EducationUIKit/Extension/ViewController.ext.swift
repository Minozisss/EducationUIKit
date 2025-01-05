//
//  ViewController.ext.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        post.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCellView.identifier, for: indexPath) as! PostCellView
        cell.backgroundColor = UIColor(red: 236/256, green: 236/256, blue: 236/256, alpha: 1)
        let onePost = post[indexPath.item]
        cell.setupPost(post: onePost)
        return cell
    }
    
    
}
