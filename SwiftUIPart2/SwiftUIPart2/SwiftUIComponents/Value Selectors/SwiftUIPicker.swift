//
//  SwiftUIPicker.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUIPicker: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate
        case vanilla
        case strawberry

        var id: String { self.rawValue }
    }
    
    @State private var selectedFlavor = Flavor.chocolate
    
    
    var body: some View {
        VStack {
            Section(header: Text("Normal picker")) {
                Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
                Text("Selected flavor: \(selectedFlavor.rawValue)")
            }
            
            // Shorted way
            
            Picker("SegmentedPickerStyle", selection: $selectedFlavor){
                ForEach(Flavor.allCases, id: \.self) { flavor in
                    Text(flavor.rawValue.capitalized)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            
            Picker("MenuPickerStyle", selection: $selectedFlavor){
                ForEach(Flavor.allCases, id: \.self) { flavor in
                    Text(flavor.rawValue.capitalized)
                }
            }.pickerStyle(MenuPickerStyle())
            
            
            Spacer()
        }
        
        
    }
}

struct SwiftUIPicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPicker()
    }
}
