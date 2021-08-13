//
//  SwiftUIImage.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
        VStack {
            Image("landscape_4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150, alignment: .topLeading)
                .border(Color.blue)
            
            
            Image("landscape_4")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150, alignment: .topLeading)
                .border(Color.blue)
            
            
            Image(systemName: "person.circle")
                .resizable(resizingMode: .tile)
                .frame(width: 200, height: 200,alignment: .topLeading)
            Spacer()
            
            
        }
    }
}

struct SwiftUIImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwiftUIImage()
        }
        
    }
}
