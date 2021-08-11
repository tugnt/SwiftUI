//
//  ProfileSumary.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/11.
//

import SwiftUI

struct ProfileSumary: View {
    var profile: Profile
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notification: \(profile.prefersNotifications ? "ON" : "OFF")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date:") + Text(profile.goalDate, style: .date)
                
                Divider()
                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                    }.padding()
                }
                
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

struct ProfileSumary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSumary(profile: Profile.default).environmentObject(ModelData())
    }
}
