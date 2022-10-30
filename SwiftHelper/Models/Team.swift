//
//  Team.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

struct Team {
    let name: String
    let surname: String?
    let telegram: String
    let git: String
    
    var fullName: String {
        "\(name) \(surname ?? "")"
    }
    
    var teamMember: [String] {
        [telegram, git]
    }
    
    static func getMembersInfo() -> [Team] {
        [
            Team(name: "Александр", surname: nil, telegram: "https://t.me/Frysed", git: "https://github.com/AlxGrshn"),
            Team(name: "Артемий", surname: "Волков", telegram: "https://t.me/artvs18",  git: "https://github.com/artvs18"),
            Team(name: "Данил", surname: "Казаков", telegram: "https://t.me/kdenononame",  git: "https://github.com/"),
            Team(name: "Роман", surname: nil, telegram: "https://t.me/romesky",  git: "https://github.com/Trome29")
        ]
    }
}
