//
//  ButtonStyle.swift
//  7Dots
//
//  Created by Shomil Singh on 26/01/24.
//

import SwiftUI

struct ButtonStyle: View {
    var title : String
    var image : String
    var body: some View {
        Label(title, systemImage: image)
            .frame(width: 135 , height: 50)
            .background(Color.white)
            .shadow(radius: 10)
            .padding(.horizontal)
            .foregroundStyle(Color(.purple))
    }
}

#Preview {
    ButtonStyle(title: "10 secs", image: "plus.app.fill")
}
