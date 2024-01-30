//
//  ViewModel.swift
//  7Dots
//
//  Created by Shomil Singh on 30/01/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var countdowntime : Int
    @Published var initialtime : Int
    @Published var isTimerRunning : Bool
    
    init(countdowntime: Int, initialtime: Int, isTimerRunning: Bool) {
        self.countdowntime = countdowntime
        self.initialtime = initialtime
        self.isTimerRunning = isTimerRunning
    }
    
    func updateCountDownTime(){
        countdowntime += 10
        initialtime = countdowntime
        isTimerRunning = true
    }
    
    func resetTimer(){
        countdowntime = 0
        initialtime = 0
        isTimerRunning = false
    }
    
    func decreaseTime(){
        countdowntime -= 1
    }
    
    
}
