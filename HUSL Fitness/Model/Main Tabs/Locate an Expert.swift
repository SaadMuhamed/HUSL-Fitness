//
//  Locate an Expert.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/26/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Locate_an_Expert: View {
    
    @State private var bellAlert = false
    @State private var userAlert = false
    @State private var locateALocalFitnessCenterAlert = false
    @State private var connetWithAProfessionalAthleteAlert = false
    @State private var connetWithAnExpertTrainerAlert = false
    @State private var liveStreamWithATrainerAlert = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    //MARK: - Locate a local fitness center
                    
                    VStack {
                        Button(action: {self.locateALocalFitnessCenterAlert = true}) {
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(Color("CustomGray"))
                                    .frame(width: nil, height: 120)
                                    .cornerRadius(20)
                                    .padding()
                                
                                HStack {
                                    
                                    Text("Locate A Local Fitness Center")
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Image("Locate a local fitness center")
                                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 120)
                                        .shadow(radius: 20)
                                        .offset(y: -50)
                                        .padding()
                                    
                                    
                                    
                                }.padding()
                            }
                        }.alert(isPresented: $locateALocalFitnessCenterAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("You will be able to search for a fitness center near you and take advantage of the best offers from it."), dismissButton: .default(Text("Got it!")))}
                        
                        
                    }.padding(.top, 50)
                    
                    
                    //MARK: - Connet with a professional athlete
                    
                    VStack {
                        Button(action: {self.connetWithAProfessionalAthleteAlert = true}) {
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(Color("CustomGray"))
                                    .frame(width: nil, height: 120)
                                    .cornerRadius(20)
                                    .padding()
                                
                                HStack {
                                    
                                    Text("Connet with a professional athlete")
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Image("Connet with a professional athlete")
                                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 120)
                                        .shadow(radius: 20)
                                        .offset(y: -50)
                                        .padding()
                                    
                                    
                                }.padding()
                            }
                        }.alert(isPresented: $connetWithAProfessionalAthleteAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("If you are playing a professional game and want technical assistance from professional players and coaches, we will help you to chat with them."), dismissButton: .default(Text("Got it!")))}
                        
                        
                    }
                    
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
                                    
                                    Text("Connet with an expert trainer")
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Image("Connet with an expert trainer")
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
                        Alert(title: Text("Coming soon!"), message: Text("You will be able to chat with the best trainers to help you with whatever you want"), dismissButton: .default(Text("Got it!")))}
                        
                        
                    }
                    
                    //MARK: - Live stream with a trainer
                    
                    VStack {
                        Button(action: {self.liveStreamWithATrainerAlert = true}) {
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(Color("CustomGray"))
                                    .frame(width: nil, height: 120)
                                    .cornerRadius(20)
                                    .padding()
                                
                                HStack {
                                    
                                    Text("Live stream with a trainer")
                                        .frame(width: 120)
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Image("Live stream with a trainer")
                                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 120)
                                        .shadow(radius: 20)
                                        .offset(y: -50)
                                        .padding()
                                    
                                    
                                }.padding()
                            }
                        }.alert(isPresented: $liveStreamWithATrainerAlert) {
                        Alert(title: Text("Coming soon!"), message: Text("You will be able to live chat with the best trainers to help you with whatever you want"), dismissButton: .default(Text("Got it!")))}
                        
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
                }).navigationBarTitle("Locate an Expert")
            }
        }
    }
}

struct Locate_an_Expert_Previews: PreviewProvider {
    static var previews: some View {
        Locate_an_Expert()
    }
}
