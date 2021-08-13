//
//  SwiftUIToggle.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUIToggle: View {
    @State private var vibrateOnRing = false
    @State private var vibrateOnSilent = true
    var body: some View {
        
        VStack {
            Toggle(isOn: $vibrateOnRing) {
                Text("Vibrate on Ring")
            }
            
            VStack {
                Toggle("Vibrate on Silent", isOn: $vibrateOnSilent)
            }
            .toggleStyle(CustomRectangleToggleStyle())
        }.padding()
        
        
        
    }
}

struct CustomRectangleToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Rectangle()
                .frame(width: 75, height: 30)
                .overlay(
                    Circle()
                        .foregroundColor(configuration.isOn ? Color.green : Color.red)
                        .padding(.all, 3)
                        .offset(x: configuration.isOn ? 20 : -20, y: 0)
                        .animation(Animation.linear(duration: 0.1))
                        
                )
                
                .cornerRadius(30)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

struct SwiftUIToggle_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIToggle()
    }
}
