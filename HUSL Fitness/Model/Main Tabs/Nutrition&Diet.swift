//
//  Nutrition&Diet.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/26/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Nutrition_Diet: View {
    
    @State private var bellAlert = false
    @State private var userAlert = false
    @State private var foodCounterAlert = false

    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    // Header
                    VStack {
                        Button(action: {self.foodCounterAlert = true}) {
                            
                            ZStack(alignment: .bottomLeading) {
                                Image("NutritionImage")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .scaledToFit()
                                    .padding([.trailing, .leading, .top])
                                
                                    Text("Food Calories Counter")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .padding(.leading, 20)
                                        .padding()
                                       
                            }
                        }.alert(isPresented: $foodCounterAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("We will calculate your calories and guide you towards the proper nutrition for your body."), dismissButton: .default(Text("Got it!")))}
                        
                    }
                    
                    //MARK: - First Meal
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media")!)
                    }) {
                        ZStack(alignment: .bottomLeading) {
                            Image("1st meal")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                                
                            
                            VStack(alignment: .leading) {
                                Text("Healthy Meats to Eat: How to Pick the Best Beef, Pork, and Fish")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.white)
                                HStack {
                                    Image("Men's Health")
                                        .renderingMode(.original)
                                        .aspectRatio(contentMode: .fit)
                                    VStack(alignment: .leading) {
                                        Text("Men's Health")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .bold()
                                        
                                        Text("Fixed")
                                            .font(.system(size: 10))
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                            }.padding()
                            
                            
                        }.aspectRatio(contentMode: .fit).padding()
                    }
                    
                    //MARK: - Second Meal
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://www.muscleandfitness.com/nutrition/healthy-eating/10-minutes-or-less-protein-packed-breakfasts/")!)
                    }) {
                        ZStack(alignment: .bottomLeading) {
                            Image("2nd meal")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                                
                            
                            VStack(alignment: .leading) {
                                Text("10 PROTEIN-PACKED BREAKFASTS THAT TAKE LESS THAN 10 MINUTES")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.white)
                                HStack {
                                    Image("M&F Logo")
                                        .renderingMode(.original)
                                        .aspectRatio(contentMode: .fit)
                                    VStack(alignment: .leading) {
                                        Text("Musle & Fitness")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .bold()
                                        
                                        Text("Fixed")
                                            .font(.system(size: 10))
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                            }.padding()
                            
                            
                        }.aspectRatio(contentMode: .fit).padding([.leading, .trailing])
                    }
                    
                    //MARK: - Third Meal
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://www.menshealth.com/nutrition/a32288443/chipotle-guac-recipe/")!)
                    }) {
                        ZStack(alignment: .bottomLeading) {
                            Image("3rd meal")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                                
                            
                            VStack(alignment: .leading) {
                                Text("Chipotle Shared Their Guacamole Recipe and It Couldn’t Be Easier to Make at Home")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.white)
                                HStack {
                                    Image("Men's Health")
                                        .renderingMode(.original)
                                        .aspectRatio(contentMode: .fit)
                                    VStack(alignment: .leading) {
                                        Text("Men's Health")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .bold()
                                        
                                        Text("Fixed")
                                            .font(.system(size: 10))
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                            }.padding()
                            
                            
                        }.aspectRatio(contentMode: .fit).padding()
                    }
                    
                    
                }.navigationBarItems(leading:
                
                Image("smallLogo")
                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                , trailing:
                HStack {
                    Button(action:{self.bellAlert = true}) {
                        Image("Bell")
                        
                    }.padding().alert(isPresented: $bellAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("You will notified with all of your activities in your account, in the next version."), dismissButton: .default(Text("Got it!")))}
                    Button(action:{self.userAlert = true}) {
                        Image("User")
                        
                    }.alert(isPresented: $userAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("You will be able to have your own account and communicate with your friends."), dismissButton: .default(Text("Got it!")))}
                }).navigationBarTitle("Nutrition & Diet")
            }
        }
    }
}

struct Nutrition_Diet_Previews: PreviewProvider {
    static var previews: some View {
        Nutrition_Diet()
    }
}
