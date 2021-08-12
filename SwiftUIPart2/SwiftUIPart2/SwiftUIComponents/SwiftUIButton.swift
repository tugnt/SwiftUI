//
//  SwiftUIButton.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/12.
//

import SwiftUI

struct SwiftUIButton: View {
    var body: some View {
        ScrollView(.vertical) {
            Group {
                Button(action: {
                    print("Button tapped!")
                }, label: {
                    Text("Hello world")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(10)
                        .background(Color.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.purple, lineWidth: 3)
                        )
                        .padding()
                })
            }
            
            // Button with Image
            Group {
                Button(action: {
                    print("Button Tapped!")
                }) {
                    Image(systemName: "trash")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .clipShape(Circle())
                }
            }
            
            // Button with image and text
            
            Group {
                Button(action: {
                    print("Button Tapped!!")
                }, label: {
                    HStack {
                        Image(systemName: "trash")
                        Text("Delete")
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                })
            }
            
            // Button gradient color
            
            Group {
                Button(action: {
                    print("Button Tapped!!")
                }, label: {
                    HStack {
                        Image(systemName: "trash")
                        Text("Delete")
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .cornerRadius(40)
                })
            }
            
            // Full width button
            
            Group {
                Button(action: {
                    print("Button Tapped!!")
                }, label: {
                    HStack {
                        Image(systemName: "trash")
                        Text("Delete")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                })
            }
            
            
        }
    }
}

#if DEBUG
struct SwiftUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}
#endif
