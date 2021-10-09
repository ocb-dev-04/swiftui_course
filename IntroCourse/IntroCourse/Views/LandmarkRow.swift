//
//  LandmarkRow.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 8/10/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            
            Text(landmark.name)
                .font(.title2)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
//        .previewLayout(.fixed(width: 300, height: 70))
    }
}
