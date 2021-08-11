//
//  StaticLabel.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/10.
//

import SwiftUI

struct StaticLabel: View {
    @State private var name = "tugnt"
    @State private var ingredients = [String]()
    
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack {
                Text("Hello World")
                    .font(.caption)
                
                
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(3)
                    .frame(width: 200)
                    .foregroundColor(.red)
                
                
                Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
                    .lineLimit(1)
                    .truncationMode(.middle)
                    .foregroundColor(.blue)
                    .padding()
            }
            
            VStack {
                // show just the date
                Text(Date().addingTimeInterval(600), style: .date)
                
                // show just the time
                Text(Date().addingTimeInterval(600), style: .time)
                
                // show the relative distance from now, automatically updating
                Text(Date().addingTimeInterval(600), style: .relative)
                
                Text(Date().addingTimeInterval(600), style: .timer)
            }
            
            VStack {
                TextField("Shout your name at me", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textCase(.uppercase)
                    .padding(.horizontal)
                
                Label("Your account", systemImage: "person.crop.circle")
                
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
            
            
            VStack {
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .multilineTextAlignment(.leading)
                    .frame(width: 300)
            }
            
            VStack {
                Text("tugnt")
                    .font(.custom("AmericanTypewriter", size: 50))
                    .tracking(30)
                
                Text("tugnt")
                    .font(.custom("AmericanTypewriter", size: 50))
                    .kerning(30)
            }
            
            VStack {
                Text("This is placeholder text")
                    .font(.title)
                    .redacted(reason: .placeholder)
            }
            
            // Notice: For Xcode 13.0 beta 2 iOS 15
            VStack {
                Text("This is regular text.")
                Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
                Text("~~A strikethrough example~~")
                Text("`Monospaced works too`")
                Text("Visit Apple: [click here](https://apple.com)")
            }
        }   
    }
}

struct StaticLabel_Previews: PreviewProvider {
    static var previews: some View {
        StaticLabel()
    }
}
