//
//  RepoStore.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/16.
//

import Foundation
import Combine

final class RepoStore: ObservableObject {
    @Published private(set) var repos: [Repo] = []
    private let service: GithubService
    
    init(service: GithubService) {
        self.service = service
    }
    
    func fetch(matching query: String) {
        service.searchRepo(matching: query, handle: {[weak self] result in
            guard let self  = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let repos):
                    self.repos = repos
                case .failure:
                    self.repos = []
                }
            }
        })
    }
}
