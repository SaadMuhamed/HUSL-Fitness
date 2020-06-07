//
//  PageController.swift
//  Hustle Fitness
//
//  Created by Saad Muhamed on 4/26/20.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct PageController: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.pageIndicatorTintColor = UIColor.systemGray
        control.currentPageIndicatorTintColor = UIColor.white
        
        control.addTarget(context.coordinator, action: #selector(Coordinator.updateCurrentPage(sender:)), for: .valueChanged)
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var control: PageController
        
        init(_ control: PageController) {
            self.control = control
        }
        
        @objc func updateCurrentPage(sender: UIPageControl) {
        control.currentPage = sender.currentPage
    }
        
    }
}
