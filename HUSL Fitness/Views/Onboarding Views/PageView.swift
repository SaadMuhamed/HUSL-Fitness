//
//  PageView.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/27/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct PageView<Page:View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    @Binding var isOnboardingDone: Bool
    
    @State var currentPage: Int = 0
    
    
    
    init(_ views: [Page], isOnboardingDone: Binding<Bool>) {
        self.viewControllers = views.map {UIHostingController(rootView: $0)}
        self._isOnboardingDone = isOnboardingDone
    }
    
    
    var body: some View {
        
        ZStack {
            
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            
            VStack {
                Spacer()
                HStack {
                    
                    PageControl(numberOfPages: viewControllers.count, currenPage: $currentPage).padding()
                    
                    
                    Spacer()
                    Button(action: {
                        if self.currentPage < self.viewControllers.count - 1 {
                            self.currentPage += 1
                        } else {
                            self.isOnboardingDone.toggle()
                        }
                        
                        
                    }) {
                        HStack {
                            Text(self.currentPage < self.viewControllers.count - 1 ? "Next" : "Done")
                                .bold()
                                .padding()
                                .foregroundColor(Color("warmBlue"))
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color("warmBlue"))
                            
                        }.frame(width: 150, height: 50)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            .padding()
                        
                    }
                }.padding()
            }
        }
        
    }
    
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(cards.map {OnboardingCardView(card: $0)}, isOnboardingDone: .constant(false))
    }
}
