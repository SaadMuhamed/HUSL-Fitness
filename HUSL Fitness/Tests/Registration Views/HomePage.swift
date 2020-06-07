//
//  Home Page.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 1/10/20. // this is a fake date!
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack {
            Text("Hello, Home!")
            
            Button (action: {
                
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                
            }) {
                
                Text("Log out")

            }.padding()
            
            
        }
    }
}

struct Home_Page_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
