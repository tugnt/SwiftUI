//
//  RepoRow.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/16.
//

import SwiftUI

struct RepoRow: View {
    var repo: Repo
    
    var body: some View {
        
        HStack(alignment: .top) {
            Image(systemName: "character.book.closed")
            
            VStack(alignment: .leading) {
                
                Link("\(repo.name)", destination: URL(string: "https://github.com/tugnt")!)
                    .font(.headline)
                
                Text(repo.description)
                    .font(.caption)
                    .foregroundColor(Color(UIColor.separator))
                HStack {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("45")
                }
            }

        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
    }
}

#if DEBUG
struct RepoRow_Previews: PreviewProvider {
    static let repo = Repo(id: 1, name: "Swift", description: "Swift repository")
    static var previews: some View {
        RepoRow(repo: repo)
    }
}
#endif
