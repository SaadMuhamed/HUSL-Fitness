//
//  Landmarks.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 3/9/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Landmarks: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct Landmarks_Previews: PreviewProvider {
    static var previews: some View {
        Landmarks()
    }
}
