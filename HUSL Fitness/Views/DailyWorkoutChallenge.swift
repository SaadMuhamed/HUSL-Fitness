//
//  DailyWorkoutChallenge.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/27/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI
import UIKit
import AVFoundation
import AVKit

struct DailyWorkoutChallenge: View {
    
    @State private var levelsAlert = false
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                // 1st
                HStack {
                    FirstExercise()
                    VStack(alignment: .leading) {
                        Text("Dumbell Incline bench")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("4x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                        }
                }
                
                // 2nd
                HStack {
                    SecondExercise()
                    VStack(alignment: .leading) {
                        Text("Incline bench")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("4x6")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 3rd
                HStack {
                    ThirdExercise()
                    VStack(alignment: .leading) {
                        Text("Decline bench")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("4x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 4th
                HStack {
                    ForthExercise()
                    VStack(alignment: .leading) {
                        Text("Flat bench")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("4x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 5th
                HStack {
                    FifthExercise()
                    VStack(alignment: .leading) {
                        Text("Underhand barbell rows")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("3x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 6th
                
                HStack {
                    SixthExercise()
                    VStack(alignment: .leading) {
                        Text("Underhand Pulldowns")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("2x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 7th
                HStack {
                    SeventhExercise()
                    VStack(alignment: .leading) {
                        Text("Front squats")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("4x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 8th
                HStack {
                    EighthExercise()
                    VStack(alignment: .leading) {
                        Text("Leg curls")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("4x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 9th
                HStack {
                    NinthExercise()
                    VStack(alignment: .leading) {
                        Text("Dumbell Curls")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("3x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                // 10th
                HStack {
                    TenthExercise()
                    VStack(alignment: .leading) {
                        Text("Dumbell Tricep")
                            .foregroundColor(.primary)
                            .font(.system(size: 20, weight: .bold))
                            
                        
                        Text("3x10")
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                        
                    }
                }
                
                
                
            }
        }.navigationBarTitle("Daily Challenge", displayMode: .inline).navigationBarItems(trailing:
            Button(action: {self.levelsAlert = true}) {
                Text("Levels")
                    .foregroundColor(.green)
                    .font(.system(size: 15, weight: .bold))
                    .frame(width: 80, height: 30)
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(10)
                
            }.alert(isPresented: $levelsAlert) {
                Alert(title: Text("Coming soon!"), message: Text("The daily workouts challenge levels will be in the next version."), dismissButton: .default(Text("Got it!")))})
    }
}






struct DailyWorkoutChallenge_Previews: PreviewProvider {
    static var previews: some View {
        DailyWorkoutChallenge()
    }
}


//MARK: - Exercises

struct FirstExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerOne()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct SecondExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerTwo()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct ThirdExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerThree()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct ForthExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerFour()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct FifthExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerFive()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct SixthExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerSix()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct SeventhExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerSeven()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct EighthExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerEight()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct NinthExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerNine()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}

struct TenthExercise: View {
    
    @State var maxHeight:CGFloat = 125
    @State var maxWidth:CGFloat = 200

    var body: some View {
        VStack{
            PlayerTen()
                .cornerRadius(15)
                .frame(width: maxWidth, height: maxHeight, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
        }
    }
}
