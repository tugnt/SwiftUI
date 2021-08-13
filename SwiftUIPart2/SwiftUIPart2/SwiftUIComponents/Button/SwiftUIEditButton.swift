//
//  SwiftUIEditButton.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUIEditButton: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.self, content: { item in
                    Text(item)
                })
                .onDelete(perform: { indexSet in
                    // delete
                }).onMove(perform: { indices, newOffset in
                    // move element 
                })
            }
            .navigationTitle("Fruits")
            .toolbar(content: {
                EditButton()
            })
        }
        
    }
}

struct SwiftUIEditButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIEditButton()
    }
}
