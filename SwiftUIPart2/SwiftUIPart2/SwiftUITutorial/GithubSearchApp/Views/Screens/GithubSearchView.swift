//
//  GithubSearchView.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/14.
//

import SwiftUI

struct GithubSearchView: View {
    @ObservedObject var searchBar: SearchBar = SearchBar()
    @EnvironmentObject var repoStore: RepoStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(repoStore.repos) { item in
                    RepoRow(repo: item)
                }
            }.navigationTitle("Search Github")
            .add(searchBar)
        }.onAppear(perform: {
            fetchData()
        })
    }
    
    private func fetchData() {
        let query = searchBar.text.isEmpty ? "swift" : searchBar.text
        repoStore.fetch(matching: query)
    }
}

struct GithubSearchView_Previews: PreviewProvider {
    static var previews: some View {
        GithubSearchView()
    }
}
