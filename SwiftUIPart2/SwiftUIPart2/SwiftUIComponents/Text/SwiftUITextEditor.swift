//
//  SwiftUITextEditor.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUITextEditor: View {
    @State private var fullText: String = "This is some editable text..."
    
    var body: some View {
        TextEditor(text: $fullText)
            .foregroundColor(Color.gray)
            .font(.custom("HelveticaNeue", size: 13))
            .lineSpacing(5)
            .disableAutocorrection(true)
    }
}

struct SwiftUITextEditor_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITextEditor()
    }
}
