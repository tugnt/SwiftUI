//
//  SwiftUISlider.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUISlider: View {
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                step: 1,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct SwiftUISlider_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISlider()
    }
}
