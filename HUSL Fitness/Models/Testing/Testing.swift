//
//  Testing.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/3/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Testing: View {
    
    @State private var birth = "Male"
    
    var body: some View {
        
        Picker("Date of Birth:", selection: $birth) {
            ForEach(1970 ..< 2020) {
                Text("\($0)")
                //Text(self.Gender[$selectedGender])
            }
        }.padding()

    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}
