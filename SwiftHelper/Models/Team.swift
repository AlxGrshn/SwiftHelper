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
            Team(name: "Alexander", surname: nil, telegram: "@Frysed", git: "https://github.com/AlxGrshn"),
            Team(name: "Artemy", surname: "Volkov", telegram: "@artvs18",  git: "https://github.com/artvs18"),
            Team(name: "Danil", surname: "Kazakov", telegram: "@kdenononame",  git: "https://github.com/"),
            Team(name: "Roman", surname: nil, telegram: "@romesky",  git: "https://github.com/Trome29")
        ]
    }
}

enum Pictures: String {
    case name = "person.circle.fill"
    case telegram = "paperplane.circle.fill"
    case git = "link.circle.fill"
}
