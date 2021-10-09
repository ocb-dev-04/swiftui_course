//
//  LandmarkDetails.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 9/10/21.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark : LandMark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)

                Text(landmark.description)
            }.padding()
            
            Spacer()
            
        }
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
