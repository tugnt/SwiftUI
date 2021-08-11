//
//  ProfileHost.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/11.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSumary(profile: draftProfile)
            Spacer()
        }
        .padding()
        
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
