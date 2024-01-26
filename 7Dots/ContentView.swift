//
//  ContentView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var countdown = 0
    @State private var initialTime = 0
    @State private var isTimerRunning : Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                ZStack{
                    
                    CircularProgressiveView(countdown: countdown,
                                            initialTime: initialTime)
                    
                    TimeView(countDown: $countdown,
                             isTimerRunning: $isTimerRunning,
                             initialTime: $initialTime)
                }
                
                ButtonView(countdown: $countdown,
                           isTimerRunning: $isTimerRunning,
                           initialTime: $initialTime)
                
            }
        }.preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
