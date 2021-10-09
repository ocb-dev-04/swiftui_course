//
//  LandmarkList.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 9/10/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks, id: \.id){ landmark in
                NavigationLink(destination: LandmarkDetails(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks List")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
