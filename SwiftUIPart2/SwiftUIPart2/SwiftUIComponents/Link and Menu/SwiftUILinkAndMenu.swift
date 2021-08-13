//
//  SwiftUILinkAndMenu.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUILinkAndMenu: View {
    var body: some View {
        VStack {
            Link("View my profile",
                  destination: URL(string: "https://github.com/tugnt")!)
            
            Menu("Actions") {
                Button("Duplicate", action: {})
                Button("Rename", action: {})
                Menu("Copy") {
                    Button("Copy", action: {})
                    Button("Copy Formatted", action: {})
                    Button("Copy Library Path", action: {})
                }
            }
            
            Menu {
                Button("Open in Preview", action: {})
                Button("Save as PDF", action: {})
            } label: {
                Label("PDF", systemImage: "doc.fill")
            }
            
            // Primay action
            Menu("Editing") {
                Button("Set In Point", action: {})
                Button("Set Out Point", action: {})
            }
            .menuStyle(BorderlessButtonMenuStyle())
            
        }
        
    }
    
    func tmpAction() {
        
    }
}

struct SwiftUILinkAndMenu_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILinkAndMenu()
    }
}
