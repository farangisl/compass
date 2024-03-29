//
//  CircleLabelView.swift
//  DCiOS16
//
//  Created by Махмадёрова Фарангис Шухратовна on 11.04.2023.
//

import SwiftUI

struct CircleLabelView: View {
    var text = "Latitude 35.08587 E • Longitude 21.43673 W • Elevation 64M • Incline 12 •".uppercased()
    var textWidth: Double = 4.87
    var diameter: Double = 300
    
    var body: some View {
        ZStack {
            ForEach(Array(text.enumerated()), id: \.offset) { index, letter in
                VStack {
                    Text(String(letter))
                    Spacer()
                }
                .rotationEffect(.degrees(textWidth * Double(index)))
            }
        }
        .frame(width: diameter, height: diameter)
        .font(.system(size: 13, design: .monospaced)).bold()
    }
}

struct CircleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLabelView()
    }
}
