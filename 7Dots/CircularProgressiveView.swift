//
//  CircularProgressiveView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct CircularProgressiveView: View {
    
    var countdown : Int
    var initialTime : Int
    
    var body: some View {
        ZStack{
            
            Circle()
                .stroke(lineWidth: 30)
                .frame(maxWidth: 300 , minHeight: 200)
                .padding()
                .opacity(0.2)
            
            Circle()
                .trim(from: 0 ,
                      to:  CGFloat((Double(countdown) / Double(initialTime) )))
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(maxWidth: 300 , minHeight: 200)
                .rotationEffect(.degrees(-90))
                .foregroundStyle(Color.purple)
                .padding()
            
        }
    }
}

#Preview {
    CircularProgressiveView(countdown: 5, initialTime: 5)
}
