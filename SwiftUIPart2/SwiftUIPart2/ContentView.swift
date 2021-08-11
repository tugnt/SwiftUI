//
//  ContentView.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/08.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showLandmark = false
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Sample app")) {
                    Button(action: {
                        showLandmark.toggle()
                    }, label: {
                        Text("Open landmark app")
                    }).sheet(isPresented: $showLandmark, content: {
                        Main().environmentObject(modelData)
                    })
                }
                
                Spacer()
                
                Section(header: Text("SwiftUI Component")) {
                    NavigationLink(
                        destination: StaticLabel(),
                        label: {
                            Text("Static Label")
                        })
                }
            }.navigationTitle("Swift UI Tutorial")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
