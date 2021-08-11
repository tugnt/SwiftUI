//
//  CategoryHome.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/11.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            List {
                modelData.landmarks[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, landmarks: modelData.landmarks.filter { $0.category.rawValue == key })
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Featured")
            .toolbar {
                Button(action: {
                    showingProfile.toggle()
                }, label: {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                })
            }
            .sheet(isPresented: $showingProfile, content: {
                ProfileHost().environmentObject(modelData)
            })
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome().environmentObject(ModelData())
    }
}
