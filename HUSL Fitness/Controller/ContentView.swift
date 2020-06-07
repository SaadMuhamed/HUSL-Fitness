//
//  ContentView.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/26/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

var cards:[OnboardingCard] = [
    OnboardingCard(image: "1st user onboarding background", title: "Exercise and earn HUSL Tokens", description: "Now with Hustle, you can start physical exercise, maintain your physical health, and earn some HUSL Tokens in the electronic HUSL wallet."),
    OnboardingCard(image: "2nd user onboarding background", title: "Improve your health", description: "Hustle provides you with the best health and physical plans based on how well you respond and your health goal."),
    OnboardingCard(image: "3rd user onboarding background", title: "Meditation and rest", description: "Wherever you are, whenever you want some rest and meditation, Hustle will provide you with concrete plans to organize your mind and make your day better."),
]

struct ContentView: View {
    
    var body: some View {
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
