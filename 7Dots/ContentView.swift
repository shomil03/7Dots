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
    @StateObject private var viewmodel = ViewModel(countdowntime: 0, initialtime: 0, isTimerRunning: false)
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                ZStack{
                    
                    CircularProgressiveView(viewmodel: viewmodel)
                    
                    TimeView(viewmodel: viewmodel)
                }
                
                ButtonView(viewmodel: viewmodel)
                
            }
        }.preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
