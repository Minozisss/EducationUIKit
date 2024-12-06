//
//  DataModel.swift
//  EducationUIKit
//
//  Created by Максим Кудрявцев on 06.12.2024.
//

import Foundation
// MARK: Данные для ячеек таблицы
struct DataToTable {
    var nameAndSurname: String
    var date: String
    var description: String
    var text: String
    var mainImage: String
    var miniImages: [String]
    
    static func date() -> [DataToTable] {
        [ 
            DataToTable(nameAndSurname: "John Smith", date: "25th November 2024", description: "John was a pioneer in sustainable architecture.", text: "John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.John Smith dedicated his life to redefining urban landscapes through sustainable architectural designs. His innovative projects earned global acclaim, blending aesthetics with environmental responsibility.", mainImage: "threePhoto", miniImages: ["threePhoto", "1", "twoPhoto"]),
            DataToTable(nameAndSurname: "Emma Johnson", date: "24th November 2024", description: "Emma is a leading figure in AI research.", text: "Emma Johnson has spearheaded groundbreaking advancements in artificial intelligence, focusing on ethical AI integration in everyday applications. Her work bridges the gap between technology and humanity, creating solutions that prioritize fairness and transparency.", mainImage: "twoPhoto", miniImages: ["1","threePhoto", "twoPhoto"]),
            DataToTable(nameAndSurname: "Michael Brown", date: "23th November 2024", description: "Michael was a celebrated novelist and educator.", text: "Michael Brown inspired generations with his evocative novels that explored complex human emotions. As an educator, he passionately mentored aspiring writers, leaving an indelible mark on the literary world.", mainImage: "1", miniImages: ["1", "twoPhoto", "threePhoto"])
        ]
    }
}
