//
//  Team.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

struct Team {
    let name: String
    let telegram: String
    let git: String
    
    var broInfo: [String] {
        [telegram, git]
    }
    
    static func getTeamInfo() -> [Team] {
        [
            Team(name: "Alexandr", telegram: "@Frysed", git: "https://github.com/AlxGrshn"),
            Team(name: "Artemy", telegram: "@artvs18",  git: "https://github.com/artvs18"),
            Team(name: "Danil", telegram: "@monolit_granit",  git: "https://github.com/"),
            Team(name: "Roman", telegram: "@romesky",  git: "https://github.com/Trome29")
        ]
    }
}

enum Pictures: String {
    case name = "person.circle.fill"
    case telegram = "paperplane.circle.fill"
    case git = "link.circle.fill"
}
