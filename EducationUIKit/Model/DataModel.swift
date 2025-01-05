//
//  DataModel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 05.01.2025.
//

import Foundation

struct OneCell: Identifiable {
    let id: String = UUID().uuidString
    var photo: String
    var title: String? = nil
    var text: String? = nil
}


struct AllData: Identifiable {
    let id: String = UUID().uuidString
    let items: [OneCell]
    
    static func mockData() -> [AllData] {
        let story = [
            OneCell(photo: "img1", text: "Cвета"),
            OneCell(photo: "img2", text: "Максим"),
            OneCell(photo: "img3", text: "Кирилл"),
            OneCell(photo: "img4", text: "Саша")
        ]
        
        let messageItem = [
            OneCell(photo: "img1", text: "Я пишу код 10 часов"),
            OneCell(photo: "img2", text: "Я пишу код 10 часов"),
            OneCell(photo: "img3", text: "Я пишу код 10 часов"),
            OneCell(photo: "img4", text: "Я пишу код 10 часов")
        ]
        
        let news = [
            OneCell(photo: "img6", title: "Я пишу", text: "Код 10 часов"),
            OneCell(photo: "img6", title: "Я пишу", text: "Код 10 часов"),
            OneCell(photo: "img6", title: "Я пишу", text: "Код 10 часов"),
            OneCell(photo: "img6", title: "Я пишу", text: "Код 10 часов")
        ]
        
        let posters = [
            OneCell(photo: "img5"),
            OneCell(photo: "img5"),
            OneCell(photo: "img5"),
            OneCell(photo: "img5")
        ]
        
        let storyData = AllData(items: story)
        let messageData = AllData(items: messageItem)
        let newsData = AllData(items: news)
        let postersData = AllData(items: posters)
        
        return [storyData, messageData, newsData, postersData]
    }
}
