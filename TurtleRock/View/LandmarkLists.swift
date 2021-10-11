//
//  LandmarkLists.swift
//  TurtleRock
//
//  Created by apple on 11/10/21.
//

import SwiftUI

struct LandmarkLists: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: ContentView(landmark: landmarks[0])) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkLists_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkLists()
    }
}
