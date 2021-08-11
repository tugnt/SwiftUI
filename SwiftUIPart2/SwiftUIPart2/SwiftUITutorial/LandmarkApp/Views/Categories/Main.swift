//
//  CategoryMain.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/11.
//

import SwiftUI

struct Main: View {
    @State private var selection: Tab = .feature
    
    enum Tab {
        case feature
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.feature)
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct CategoryMain_Previews: PreviewProvider {
    static var previews: some View {
        Main().environmentObject(ModelData())
    }
}
