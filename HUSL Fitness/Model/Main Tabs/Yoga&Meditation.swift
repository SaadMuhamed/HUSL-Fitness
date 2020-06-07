//
//  Yoga&Meditation.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/26/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Yoga_Meditation: View {
    
    @State private var bellAlert = false
    @State private var userAlert = false
    @State private var dailyYogaChallengeAlert = false
    @State private var meditationAlert = false
    @State private var connetWithAnExpertTrainerAlert = false


    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    
                    //MARK: - Daily Yoga Challenge
                    
                    VStack {
                        Button(action: {self.dailyYogaChallengeAlert = true}) {
                            ZStack(alignment: .bottomLeading) {
                                Image("YogaHeader")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                
                                
                                VStack(alignment: .leading) {
                                    Text("Daily Yoga Challenge")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        
                                    
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 80, height: 30)
                                            .cornerRadius(10)
                                            .foregroundColor(Color.yellow.opacity(0.2))
                                        
                                        Text("Beginner")
                                            .foregroundColor(.yellow)
                                            .font(.system(size: 15, weight: .bold))
                                    }
                                }.padding(30)
                                
                            }
                        }.alert(isPresented: $dailyYogaChallengeAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("If you are a fan of yoga, there will be daily challenges to boost your level, coming in the next release."), dismissButton: .default(Text("Got it!")))}
                        
                    }
                    
                    //MARK: - Meditation
                    
                    VStack {
                        Button(action: {self.meditationAlert = true}) {
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(Color("CustomGray"))
                                    .frame(width: nil, height: 120)
                                    .cornerRadius(20)
                                    .padding()
                                
                                HStack {
                                    
                                    Text("Meditation")
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Image("Meditation")
                                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 120)
                                        .shadow(radius: 20)
                                        .offset(y: -50)
                                        .padding()
                                    
                                    
                                }.padding()
                            }
                        }.alert(isPresented: $meditationAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("If you are a fan of yoga, there will be daily challenges to boost your level, coming in the next release."), dismissButton: .default(Text("Got it!")))}
                        
                        
                    }.padding(.top)
                    
                    //MARK: - Connet with an expert trainer
                    VStack {
                        Button(action: {self.connetWithAnExpertTrainerAlert = true}) {
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(Color("CustomGray"))
                                    .frame(width: nil, height: 120)
                                    .cornerRadius(20)
                                    .padding()
                                
                                HStack {
                                    
                                    Text("Connect with an Expert Trainer")
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Image("Connect with an Expert Trainer")
                                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 120)
                                        .shadow(radius: 20)
                                        .offset(y: -50)
                                        .padding()
                                    
                                    
                                }.padding()
                            }
                        }.alert(isPresented: $connetWithAnExpertTrainerAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("You will be able to chat with the best trainers to help you with whatever you want."), dismissButton: .default(Text("Got it!")))}
                        
                        
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
                    }).navigationBarTitle("Nutrition & Diet").navigationBarTitle("Yoga & Meditation")
            }
        }
    }
}

struct Yoga_Meditation_Previews: PreviewProvider {
    static var previews: some View {
        Yoga_Meditation()
    }
}
