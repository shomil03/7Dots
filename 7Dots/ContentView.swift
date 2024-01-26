//
//  ContentView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var countdown = 60
    @State private var isTimerRunning : Bool = false
   
    
    
    var body: some View {
        NavigationStack{
            TimeView(countDown: $countdown, isTimerRunning: $isTimerRunning)
            
                
            
            
        }
    }
}

#Preview {
    ContentView()
}
