//
//  SwiftUIStepper.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUIStepper: View {
    @State private var value = 0
    let step = 5
    let range = 1...50
    
    var body: some View {
        Stepper(value: $value,
                in: range,
                step: step) {
            Text("Current: \(value) in \(range.description) " +
                    "stepping by \(step)")
                .font(.system(size: 14))
        }
        .padding(10)
    }
}

struct SwiftUIStepper_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStepper()
    }
}
