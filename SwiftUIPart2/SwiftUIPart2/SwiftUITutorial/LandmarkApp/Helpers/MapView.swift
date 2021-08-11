//
//  MapView.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/10.
//

import SwiftUI
import MapKit

struct MapView: View {
    var cordinator: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(cordinator: cordinator)
                }
        }
        
    }
    
    private func setRegion(cordinator: CLLocationCoordinate2D)  {
        region =  MKCoordinateRegion(center: cordinator, span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cordinator: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
