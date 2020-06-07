//
//  Workouts.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/27/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Workouts: View {
    
    @State private var showingAlert = false
    @State private var walletAlert = false
    @State private var activityAlert = false
    @State private var bellAlert = false
    @State private var userAlert = false


    var body: some View {
        
        NavigationView {
            ScrollView {
                
                NavigationLink(destination: DailyWorkoutChallenge()) {
                    ZStack(alignment: .bottomLeading) {
                        Image("Background")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding([.trailing, .leading, .top])
                            
                            
                        VStack(alignment: .leading) {
                            Text("Daily Workout Challenge")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                                
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 80, height: 30)
                                    .cornerRadius(10)
                                    .foregroundColor(Color.yellow.opacity(0.2))
                                
                                Text("Level 1")
                                    .foregroundColor(.yellow)
                                    .font(.system(size: 15, weight: .bold))
                                    
                            }
                        
                        }.padding(.leading, 20).padding()
                        
                    }
                }
                
                HStack{
                    
                    ZStack(alignment: .bottom){
                        Rectangle()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .foregroundColor(Color("CustomGray"))
                            .shadow(radius: 1)
                        VStack {
                            Text("You have earned")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                            
                            Text("0")
                                .font(.system(size: 30))
                                .bold()
                            
                            Text("Tokens")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                            
                            
                            
                            Button(action: {
                                self.walletAlert = true
                            }) {
                                
                                Text("Hustle Wallet")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: 90,height: 30)
                                    .background(Color.orange)
                                    .cornerRadius(5)
                                    .padding(.bottom, 10)
                                
                            }.alert(isPresented: $walletAlert) {
                                Alert(title: Text("Coming soon!"), message: Text("The Wallet App will release very soon and you will be able to save your tokens in it."), dismissButton: .default(Text("Got it!")))}
                        }
                    }
                    
                    ZStack(alignment: .bottom){
                        Rectangle()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .foregroundColor(Color("CustomGray"))
                            .shadow(radius: 1)
                        VStack {
                            Text("You have done")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                            
                            Text("0")
                                .font(.system(size: 30))
                                .bold()
                            
                            Text("Workouts")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                            
                            
                            Button(action: {
                                self.activityAlert = true
                            }) {
                                
                                Text("Activity Progress")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: 110,height: 30)
                                    .background(Color("warmBlue"))
                                    .cornerRadius(5)
                                    .padding(.bottom, 10)
                                
                            }.alert(isPresented: $activityAlert) {
                            Alert(title: Text("Coming soon!"), message: Text("This feature is coming very soon with the next version to count your activities everyday."), dismissButton: .default(Text("Got it!")))}
                        }
                    }
                    ZStack(alignment: .bottom){
                        Rectangle()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .foregroundColor(Color("CustomGray"))
                            .shadow(radius: 1)
                        VStack {
                            Text("You have exercised")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                            
                            Text("0h")
                                .font(.system(size: 30))
                                .bold()
                            
                            Text("of practice")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                            
                            
                            NavigationLink(destination: AllWorkouts()) {
                                
                                Text("All Workouts")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: 90,height: 30)
                                    .background(Color.green)
                                    .cornerRadius(5)
                                    .padding(.bottom, 10)
                                
                            }
                        }
                    }
                }.padding()
                
                NavigationLink(destination: AllWorkouts()) {
                    ZStack{
                        Image("AllWorkouts")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .resizable()
                            .scaledToFit()
                            .padding([.trailing,.leading])
                        
                        Text("All Workouts")
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold))
                    }
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
                    
            }).navigationBarTitle("Workouts")
        }
        
        
    }
    
}

struct Workouts_Previews: PreviewProvider {
    static var previews: some View {
        AllWorkouts()
    }
}


struct AllWorkouts: View {
    
    @State private var activityAlert = false
    @State private var logYourFitnessAlert = false
    @State private var progressOverviewAlert = false
    @State private var bikingAlert = false
    @State private var personalPlanAlert = false
    @State private var workoutZoneAlert = false
    @State private var runningAlert = false
    @State private var groupConnectionsAlert = false
    
    var body: some View {
        ScrollView{
            VStack {
                
                //MARK: - Activity
                
                VStack {
                    Button(action: {self.activityAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Activity")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Activity")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $activityAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("This feature is coming very soon with the next version to count your activities everyday."), dismissButton: .default(Text("Got it!")))}
                    
                    
                }.padding(.top, 50)
                
                
                //MARK: - Log Your Fitness
                
                VStack {
                    Button(action: {self.logYourFitnessAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Log Your Fitness")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Log Your Fitness")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $logYourFitnessAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("You can enter your Fitness status and we will prepare your own program."), dismissButton: .default(Text("Got it!")))}
                    
                    
                }
                
                
                //MARK: - Progress Overview
                
                VStack {
                    Button(action: {self.progressOverviewAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Progress Overview")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Progress Overview")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $progressOverviewAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("We will calculate all of your activities, arrange them for you, and let you know what you must follow to improve your activities."), dismissButton: .default(Text("Got it!")))}
                    
                    
                }
                
                //MARK: - Biking
                VStack {
                    Button(action: {self.bikingAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Biking")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Biking")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $bikingAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("If you like cycling, we will improve your experience and increase your activity."), dismissButton: .default(Text("Got it!")))}
                    
                }
                
                //MARK: - Personal Plan
                
                VStack {
                    Button(action: {self.personalPlanAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Personal Plan")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Personal Plan")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $personalPlanAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("We will create your own fitness plan based on what you want to improve and we will always be with you."), dismissButton: .default(Text("Got it!")))}
                    
                    
                }.padding(.top, 50)
                
                
                //MARK: - Workout Zone
                
                VStack {
                    Button(action: {self.workoutZoneAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Workout Zone")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Workout Zone")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $workoutZoneAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("Outdoor, Gym, and Home workouts? we will organize your zone."), dismissButton: .default(Text("Got it!")))}
                    
                    
                }
                
                
                //MARK: - Running
                
                VStack {
                    Button(action: {self.runningAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Running")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Running")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $runningAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("We will motivate you and enhance your running experience, through the smart watch."), dismissButton: .default(Text("Got it!")))}
                    
                    
                }
                
                //MARK: - Group Connections
                
                VStack {
                    Button(action: {self.groupConnectionsAlert = true}) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("CustomGray"))
                                .frame(width: nil, height: 120)
                                .cornerRadius(20)
                                .padding()
                            
                            HStack {
                                
                                Text("Group Connections")
                                    .frame(width: 120)
                                    .foregroundColor(.primary)
                                    .font(.headline)
                                    .padding()
                                
                                Spacer()
                                
                                Image("Group Connections")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .shadow(radius: 20)
                                    .offset(y: -50)
                                    .padding()
                                
                                
                            }.padding()
                        }
                    }.alert(isPresented: $groupConnectionsAlert) {
                    Alert(title: Text("Coming soon!"), message: Text("There will be comprehensive groups and special all your interests to enhance your healthy and social life."), dismissButton: .default(Text("Got it!")))}
                    
                }
                
            }
        }.navigationBarTitle("All Workouts", displayMode: .inline)
    }
}
