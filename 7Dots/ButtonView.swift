//
//  ButtonView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct ButtonView: View {
    

    @ObservedObject var viewmodel : ViewModel
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                viewmodel.updateCountDownTime()
//                countdown += 10
//                isTimerRunning = true
//                initialTime = countdown
                
            }, label:{
                ButtonStyle(title: "10 secs", image: "plus.app.fill")
            })
            
            Spacer()
            
            Button(action: {
                viewmodel.resetTimer()
//                isTimerRunning = false
//                initialTime = 0
//                countdown = 0
                
            }, label:{
                ButtonStyle(title: "skip", image: "goforward.plus")
            })
        }
        .padding()
    }
}

#Preview {
    ButtonView(viewmodel: ViewModel(countdowntime: 5, initialtime: 5, isTimerRunning: true))
}
