//
//  LandmarkDetails.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 9/10/21.
//

import SwiftUI

struct LandmarkDetails: View {
    @EnvironmentObject var modelData: ModelData
    var landmark : LandMark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

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
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetails(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
