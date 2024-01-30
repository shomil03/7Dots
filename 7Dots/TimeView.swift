//
//  TimeView.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct TimeView: View {
    
    @StateObject var model = formatterTimer()
    @ObservedObject var viewmodel : ViewModel
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        Text(model.formatTimer(countDown: viewmodel.countdowntime))
            .font(.system(size: 50 , weight: .heavy))
            .onReceive(timer){ timer in
                withAnimation(.easeIn){
                    if(viewmodel.countdowntime > 0 && viewmodel.isTimerRunning){
                        viewmodel.decreaseTime()
                    }else{
                        viewmodel.resetTimer()
                        
                    }
                }
                
            }
    }
}

#Preview {
    TimeView(viewmodel: ViewModel(countdowntime: 5, initialtime: 5, isTimerRunning: true))
}
