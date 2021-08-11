//
//  StaticLabel.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/10.
//

import SwiftUI

struct StaticLabel: View {
    @State private var name = "Paul"
    var body: some View {
        
        VStack {
            // show just the date
            Text(Date().addingTimeInterval(600), style: .date)
            
            // show just the time
            Text(Date().addingTimeInterval(600), style: .time)
            
            // show the relative distance from now, automatically updating
            Text(Date().addingTimeInterval(600), style: .relative)

            Text(Date().addingTimeInterval(600), style: .timer)
            TextField("Shout your name at me", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .textCase(.uppercase)
                .padding(.horizontal)
            Label("Your account", systemImage: "folder.circle")
            Label("Your account", systemImage: "person.crop.circle")
                .font(.title)
            
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(TitleOnlyLabelStyle())
            
            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(IconOnlyLabelStyle())
            
            // Only avaiable ios >14
            Label("Both", systemImage: "paperplane")
                .font(.title)
                .labelStyle(TitleAndIconLabelStyle())
        }
    }
}

struct StaticLabel_Previews: PreviewProvider {
    static var previews: some View {
        StaticLabel()
    }
}
