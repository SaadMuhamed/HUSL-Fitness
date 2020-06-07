//
//  Community.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/26/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Community: View {
    @State private var selectorIndex = 0
    @State private var numbers = ["News","Blogs"]
    @State private var bellAlert = false
    @State private var userAlert = false
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack{
                        VStack {
                            
                            Picker("Numbers", selection: $selectorIndex) {
                                ForEach(0 ..< numbers.count) { index in
                                    Text(self.numbers[index]).tag(index)
                                }
                                
                            }.pickerStyle(SegmentedPickerStyle())
                            
                            if self.selectorIndex == 0 {
                                News()
                            } else {
                                Blogs()
                            }
                            
                            
                            
                            
                            
                            
                        }.padding().navigationBarItems(leading:
                        
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
                        }).navigationBarTitle("Community").edgesIgnoringSafeArea(.all)
                    }
                }
            }
        }
    }
}

struct Community_Previews: PreviewProvider {
    static var previews: some View {
        Community()
    }
}


struct News: View {
    
    var body: some View {
        
        VStack {
            HStack {
                
                //MARK: - 1st post
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .foregroundColor(Color("CustomGray"))
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 1)
                    
                    VStack {
                        HStack {
                            Image("smallLogo")
                            VStack(alignment: .leading) {
                                Text("Hustle Tokens LLC")
                                    .font(.caption)
                                    .bold()
                                Text("Fixed")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                
                            }
                            
                        }.padding()
                        
                        Text("Hustle Fitness is here!")
                            .font(.system(size: 15))
                        Image("Image1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                }
                
                //MARK: - 2nd post
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .foregroundColor(Color("CustomGray"))
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 1)
                    
                    VStack {
                        HStack {
                            Image("smallLogo")
                            VStack(alignment: .leading) {
                                Text("Hustle Tokens LLC")
                                    .font(.caption)
                                    .bold()
                                Text("Fixed")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                
                            }
                            
                        }.padding()
                        
                        Text("Start your workout now")
                            .font(.system(size: 15))
                        
                        Image("Image2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                }
            }
            HStack {
                
                //MARK: - 3rd post
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .foregroundColor(Color("CustomGray"))
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 1)
                    
                    VStack {
                        HStack {
                            Image("smallLogo")
                            VStack(alignment: .leading) {
                                Text("Hustle Tokens LLC")
                                    .font(.caption)
                                    .bold()
                                Text("Fixed")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                
                            }
                            
                        }.padding()
                        VStack {
                            Text("Check out our Facbook")
                                .font(.system(size: 15))
                            Button(action: {UIApplication.shared.open(URL(string: "https://facebook.com/HustleToken/")!)}) {
                                Image("FacebookImage")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                        }
                        
                    }
                    
                }
                
                //MARK: - 4th post
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .foregroundColor(Color("CustomGray"))
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 1)
                    
                    VStack {
                        HStack {
                            Image("smallLogo")
                            VStack(alignment: .leading) {
                                Text("Hustle Tokens LLC")
                                    .font(.caption)
                                    .bold()
                                Text("Fixed")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                
                            }
                            
                        }.padding()
                        
                        VStack {
                            Text("Check out our Twitter")
                                .font(.system(size: 15))
                            Button(action: {UIApplication.shared.open(URL(string: "https://twitter.com/TheHustleToken")!)}) {
                                
                                Image("TwitterImage")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                        
                    }
                    
                }
                
                
            }
            
            HStack {
                
                //MARK: - 5th post
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .foregroundColor(Color("CustomGray"))
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 1)
                    
                    VStack {
                        HStack {
                            Image("smallLogo")
                            VStack(alignment: .leading) {
                                Text("Hustle Tokens LLC")
                                    .font(.caption)
                                    .bold()
                                Text("Fixed")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                
                            }
                            
                        }.padding()
                        
                        VStack {
                            Text("Check out our Telegram")
                                .font(.system(size: 15))
                            Button(action: {UIApplication.shared.open(URL(string: "https://t.me/HustleAppChat")!)}) {
                                
                                Image("Telegram")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                        
                        
                    }
                    
                }
                
                
                //MARK: - 6th post
                
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .foregroundColor(Color("CustomGray"))
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 1)
                    
                    VStack {
                        HStack {
                            Image("smallLogo")
                            VStack(alignment: .leading) {
                                Text("Hustle Tokens LLC")
                                    .font(.caption)
                                    .bold()
                                Text("Fixed")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                
                            }
                            
                        }.padding()
                        
                        Text("The Hustle wallet is coming soon. you can get fit and get money so your hustle tokens will be in your app wallet very soon.")
                            .font(.system(size: 15))
                            .padding([.leading, .trailing])
                        
                    }
                    
                }
                
                
            }
            
        }.padding(.top)
        
    }
}


struct Blogs: View {
    var body: some View {
        VStack {
            
            //MARK: - 1st blog
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://www.muscleandfitness.com/muscle-fitness-hers/hers-nutrition/7-food-delivery-services-keep-your-diet-track/")!)
            }) {
                ZStack(alignment: .bottomLeading) {
                    Image("1st Blog")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                    
                    
                    VStack(alignment: .leading) {
                        Text("7 FOOD DELIVERY SERVICES TO KEEP YOUR DIET ON TRACK")
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
                    
                    
                }.aspectRatio(contentMode: .fit).padding(.bottom)
            }
            
            
            
            //MARK: - 2nd blog
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://www.muscleandfitness.com/workouts/workout-tips/ultimate-bodyweight-training-guide/")!)
            }) {
                ZStack(alignment: .bottomLeading) {
                    Image("2nd Blog")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading) {
                        Text("THE ULTIMATE BODYWEIGHT TRAINING GUIDE")
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
                    
                    
                }.aspectRatio(contentMode: .fit).padding(.bottom)
            }
            
            //MARK: - 3rd blog
            
            Button(action: {
                UIApplication.shared.open(URL(string: "https://www.muscleandfitness.com/workouts/workout-tips/how-to-keep-up-your-fitness-during-quarantine/")!)
            }) {
                ZStack(alignment: .bottomLeading) {
                    Image("3rd Blog")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading) {
                        Text("HOW TO KEEP UP YOUR FITNESS DURING QUARANTINE")
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
                    
                    
                }.aspectRatio(contentMode: .fit).padding(.bottom)
            }
            
            
            
        }.padding(.top)
    }
}
