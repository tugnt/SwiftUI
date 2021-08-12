//
//  SwiftUITextField.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/12.
//

import SwiftUI

struct SwiftUITextField: View {
    @State private var username = ""
    @State private var name = ""
    @State private var password = ""
    @State private var phoneNumber = ""
    @State private var inputSearch = ""
    @State private var isEditing = false
    
    var body: some View {
        
        ScrollView {
            
            Group {
                VStack {
                    TextField("User name or email address", text: $username) { isEditing in
                        self.isEditing = isEditing
                    } onCommit: {
                        // todo: Validate user name
                        print("Validate user name")
                    }
                    .padding()
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    
                    Text(username)
                        .foregroundColor(isEditing ? .red : .blue)
                }
                .padding()
                
                VStack {
                    TextField("Enter user name", text: $name)
                        .padding()
                        .disableAutocorrection(true)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textContentType(.emailAddress)
                        .border(Color(UIColor.separator))
                    
                    SecureField("Enter password", text: $password)
                        .padding()
                        .textFieldStyle(PlainTextFieldStyle())
                        .textContentType(.password)
                        .border(Color(UIColor.separator))
                    
                    TextField("Enter phone number", text: $phoneNumber)
                        .padding()
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textContentType(.telephoneNumber)
                        .keyboardType(.phonePad)
                    
                }
                .padding()
                
                VStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color(UIColor.separator))
                        TextField("Enter here", text: $inputSearch)
                            
                    }
                    .padding()
                    .border(Color(UIColor.separator))
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(UIColor.separator), lineWidth: 2))
                    .padding()
                    
                }
                
            }
            
            
            
        }
        
    }
}

struct SwiftUITextField_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITextField()
    }
}
