//
//  LandmarkList.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 9/10/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks, id: \.self) { data in
                    NavigationLink(destination: LandmarkDetails(landmark: data)) {
                        LandmarkRow(landmark: data)
                    }
                }
            }
            .navigationTitle("Landmarks List")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
