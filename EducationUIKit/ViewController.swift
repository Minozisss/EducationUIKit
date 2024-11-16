//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    var subscriptions = UILabel()
    var subscribers = UILabel()
    var posts = UILabel()
    var numberOfSubscriptions = UILabel()
    var numberOfSubscribers = UILabel()
    var numberOfPosts = UILabel()
    var aboutMe = UILabel()
    var information = UILabel()
    
    var newPostButton = UIButton()
    var exitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        createSubscriptions()
        createSubscribers()
        createPosts()
        createNumberOfSubscriptions()
        createNumberOfSubscribers()
        createNumberOfPosts()
        createAboutMe()
        createInformation()
        
        createNewPost()
        createExitButton()
    }
    
    func createSubscriptions() {
        
        subscriptions.text = "Подписок"
        subscriptions.textColor = .black
        subscriptions.numberOfLines = 0
        subscriptions.font = UIFont.systemFont(ofSize: 15, weight:.black)
        subscriptions.frame = CGRect(x: 30, y: 200, width: 100, height: 50)
        
        view.addSubview(subscriptions)
    }
    
    func createSubscribers() {
        let width = view.frame.size.width
        
        subscribers.text = "Подписчиков"
        subscribers.textColor = .black
        subscribers.numberOfLines = 0
        subscribers.font = UIFont.systemFont(ofSize: 15, weight: .black)
        subscribers.frame = CGRect(x: (width / 2) - 55, y: 200, width: 120, height: 50)
        
        view.addSubview(subscribers)
    }
    
    func createPosts() {
        let widht = view.frame.size.width
        
        posts.text = "Постов"
        posts.textColor = .black
        posts.numberOfLines = 0
        posts.font = UIFont.systemFont(ofSize: 15, weight: .black)
        posts.frame = CGRect(x: widht - 100 , y: 200, width: 70, height: 50)
        
        view.addSubview(posts)
    }
    
    func createNumberOfSubscriptions() {
        
        numberOfSubscriptions.text = "39"
        numberOfSubscriptions.textColor = .black
        numberOfSubscriptions.numberOfLines = 0
        numberOfSubscriptions.font = UIFont.systemFont(ofSize: 20)
        numberOfSubscriptions.frame = CGRect(x: 60 , y: 230, width: 30, height: 50)
        
        view.addSubview(numberOfSubscriptions)
    }
    
    func createNumberOfSubscribers() {
        let width = view.frame.size.width
        
        numberOfSubscribers.text = "364"
        numberOfSubscribers.textColor = .black
        numberOfSubscribers.numberOfLines = 0
        numberOfSubscribers.font = .systemFont(ofSize: 20)
        numberOfSubscribers.frame = CGRect(x: (width / 2) - 15, y: 230, width: 40, height: 50)
        
        view.addSubview(numberOfSubscribers)
    }
    
    func createNumberOfPosts() {
        let width = view.frame.size.width
        
        numberOfPosts.text = "104"
        numberOfPosts.textColor = .black
        numberOfPosts.numberOfLines = 0
        numberOfPosts.font = .systemFont(ofSize: 20)
        numberOfPosts.frame = CGRect(x: width - 90, y: 230, width: 40, height: 50)
        
        view.addSubview(numberOfPosts)
        
    }
    
    func createAboutMe() {
        aboutMe.text = "О себе"
        aboutMe.textColor = .black
        aboutMe.numberOfLines = 0
        aboutMe.font = .systemFont(ofSize: 15, weight: .black)
        aboutMe.frame = CGRect(x: 30, y: 370, width: 100, height: 50)
        
        view.addSubview(aboutMe)
    }
    
    func createInformation() {
        let width = view.frame.size.width
        
        
        information.text = "Меня зовут Максим. Я живу в прекрасном городе - Санкт-Петербурге. Люблю ездить на автомобиле под старые песни (например 'Englishman In New-York' Sting)."
        information.textColor = .black
        information.numberOfLines = 0
        information.font = .systemFont(ofSize: 15)
        information.frame = CGRect(x: 30, y: 400, width: width - 60, height: 100)
        
        view.addSubview(information)
    }
    
    func createNewPost() {
        let width = view.frame.size.width
        
        newPostButton.setTitle("Добавить пост", for: .normal)
        newPostButton.setTitleColor(.white, for: .normal)
        newPostButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        newPostButton.backgroundColor = .black
        newPostButton.layer.cornerRadius = 20
        newPostButton.frame = CGRect(x: 30, y: 300, width: width - 60, height: 50)
        
        view.addSubview(newPostButton)
    }
    
    func createExitButton() {
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        exitButton.setTitle("Выйти", for: .normal)
        exitButton.setTitleColor(.blue, for: .normal)
        exitButton.frame = CGRect(x: 30, y: height - 100, width: width - 60, height: 50)
        
        view.addSubview(exitButton)
    }
    
    

}

