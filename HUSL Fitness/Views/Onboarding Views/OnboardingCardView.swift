//
//  UserOnboarding.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 1/10/20. // this is a fake date!
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct OnboardingCardView: View {
    
    
    var card: OnboardingCard
    
    var body: some View {
        
        
        ZStack {
            
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(card.title)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.leading)
                        .frame(alignment: .leading)
                    
                    Text(card.description)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                        .padding()
                    
                }
                
                
            }.offset(y: -100)
            
        }
        
    }
}


struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        OnboardingCardView(card: cards[0])
    }
}


