//
//  formattedTime.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import Foundation
import SwiftUI

class formatterTimer : ObservableObject {
    
    

    
    func formatTimer(countDown : Int) -> String{
        let seconds = Int(countDown % 60)
        let minutes = Int(countDown / 60)
        return String(format: "%d:%02d", minutes, seconds)
    }
}
