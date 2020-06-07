//
//  registrationLandingPage.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 3/9/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct Registration: View {
    var body: some View {
        ZStack {
            Image("registrationBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
                
                Spacer()
                
                Image("HuslLogo")
                    .padding(.bottom, 30)
                
                
                
                Text("Log In now if you have an account, if not just sign up a new one:")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                
                
                VStack{
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 414, height: 59, alignment: .center)
                            .foregroundColor(.white)
                            .padding(.bottom, 0)
                        Text("Log In")
                            .foregroundColor(Color("warmBlue"))
                            .fontWeight(.bold)
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("warmBlue"))
                            .frame(width: 414, height: 92, alignment: .center)
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(.top, -10)
                        
                        Text("Sign Up")
                            
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.bottom, 37)
                        
                    }
                    
                    
                }.padding(.top, 30)
                    
                
            }.edgesIgnoringSafeArea(.bottom)
            
            
            
        }
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
