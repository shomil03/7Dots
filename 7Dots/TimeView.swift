//
//  TimeView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct TimeView: View {
    
    @Binding var countDown : Int
    @Binding var isTimerRunning : Bool
    @Binding var initialTime : Int
    @StateObject var model = formatterTimer()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text(model.formatTimer(countDown: countDown))
            .font(.system(size: 50 , weight: .heavy))
            .onReceive(timer){ timer in
                withAnimation(.easeIn){
                    if(countDown > 0 && isTimerRunning){
                        countDown = countDown - 1
                    }else{
                        isTimerRunning.toggle()
                        countDown = 0
                        initialTime = 0
                        
                    }
                }
                
            }
    }
}

#Preview {
    TimeView(countDown: .constant(5), isTimerRunning: .constant(true), initialTime: .constant(5))
}
