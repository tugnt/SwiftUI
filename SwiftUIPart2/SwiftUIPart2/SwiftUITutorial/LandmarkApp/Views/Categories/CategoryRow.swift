//
//  CategoryRow.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/11.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var landmarks: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(landmarks) { item in
                        NavigationLink(destination: LandmarkDetail(landmark: item)) {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue,
                    landmarks: Array(landmarks.prefix(4)))
    }
}
