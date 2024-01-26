//
//  ButtonView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct ButtonView: View {
    @Binding var countdown : Int
    @Binding var isTimerRunning : Bool
    @Binding var initialTime : Int
    var body: some View {
        HStack {
            Button(action: {
                countdown += 10
                isTimerRunning = true
                initialTime = countdown
                
            }, label:{
                ButtonStyle(title: "10 secs", image: "plus.app.fill")
            })
            
            Spacer()
            Button(action: {
                isTimerRunning = false
                initialTime = 0
                countdown = 0
                
            }, label:{
                ButtonStyle(title: "skip", image: "goforward.plus")
            })
        }
        .padding()
    }
}

#Preview {
    ButtonView(countdown: .constant(5), isTimerRunning: .constant(true), initialTime: .constant(5))
}
