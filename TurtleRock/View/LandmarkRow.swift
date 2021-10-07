//
//  LandmarkRow.swift
//  TurtleRock
//
//  Created by Abhi on 07/10/21.
//

import SwiftUI

struct LandmarkRow: View {
   
    var landmarks: Landmark
    
    var body: some View {
        HStack {
            landmarks.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmarks.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
