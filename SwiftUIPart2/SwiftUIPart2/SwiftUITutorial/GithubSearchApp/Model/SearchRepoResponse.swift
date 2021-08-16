//
//  SearchRepoResponse.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/17.
//

import Foundation

struct Repo: Decodable, Identifiable {
    var id: Int
    let name: String
    let description: String
    
    static func sampleData() -> Repo {
        return Repo(id: 1, name: "Swift", description: "Swift UI Repository")
    }
}

struct SearchRepoResponse: Decodable {
    let items: [Repo]
}
