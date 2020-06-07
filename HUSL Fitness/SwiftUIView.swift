//
//  SwiftUIView.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 3/9/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
           NavigationLink(destination: SwiftUIView()) {
              Text("Press on me")
           }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
