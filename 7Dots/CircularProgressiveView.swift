//
//  CircularProgressiveView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct CircularProgressiveView: View {

    @ObservedObject var viewmodel : ViewModel
    
    var body: some View {
        ZStack{
            
            Circle()
                .stroke(lineWidth: 30)
                .frame(maxWidth: 300 , minHeight: 200)
                .padding()
                .opacity(0.2)
            
            Circle()
                .trim(from: 0 ,
                      to:  CGFloat((Double(viewmodel.countdowntime) / Double(viewmodel.initialtime) )))
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(maxWidth: 300 , minHeight: 200)
                .rotationEffect(.degrees(-90))
                .foregroundStyle(Color.purple)
                .padding()
            
        }
    }
}

#Preview {
    CircularProgressiveView(viewmodel: ViewModel(countdowntime: 5, initialtime: 5, isTimerRunning: true))
}
