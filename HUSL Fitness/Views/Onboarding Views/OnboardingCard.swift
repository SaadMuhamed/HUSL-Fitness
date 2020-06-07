//
//  OnboardingCard.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/27/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import Foundation

struct OnboardingCard: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}
