//
//  HomeViewPage.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/24/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct HomeViewPage: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //    self.presentationMode.wrappedValue.dismiss()
    
    @State private var selection = 0
    
    var title = "Workouts"
    var body: some View {
        
        TabView(selection: $selection) {
            
            Workouts()
            .tabItem{
                Button(action: {}) {
                    Image("Workouts")
                }
                //Text("Workouts")
                
            }.tag(1)
            
                Community()
                .tabItem{
                    Button(action: {}) {
                        Image("Community")
                    }
                    //Text("Community")
                    
            }.tag(2)
            Locate_an_Expert()
                .tabItem{
                    Button(action: {}) {
                        Image("Locate an Expert")
                    }
                    //Text("Locate")
            }.tag(3)
            
            Nutrition_Diet()
                .tabItem{
                    Button(action: {}) {
                
                        Image("Nutrition & Diet")
                    }
                    
                    //Text("Nutrition")
                    
            }   .tag(4)
            Yoga_Meditation()
                .tabItem{
                    Button(action: {}) {
                        Image("Yoga & Meditation")
                    }
                    //Text("Yoga")
                    
            }.tag(5)
        }.accentColor(Color("warmBlue"))
    }
}



struct HomeViewPage_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewPage()
    }
}



