//
//  CustomSheet.swift
//  DCiOS16
//
//  Created by Махмадёрова Фарангис Шухратовна on 12.04.2023.
//

import SwiftUI

struct CustomSheet: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 30) {
                Text("[INCLINE](https://apple.com)\n").font(.caption) + Text("20°")
                Text("ELEVATION\n").font(.caption) + Text("64M")
                Text("LATITUDE\n").font(.caption) + Text("35.08587 E")
                Text("LONGITUDE\n").font(.caption) + Text("48.1255 W")
                arrow
                Spacer()
            }
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(40)
        .background(.black.opacity(0.5))
        .cornerRadius(50)
        .background(.ultraThinMaterial)
        .cornerRadius(50)
        .overlay (
            RoundedRectangle(cornerRadius: 10)
                .fill(.white.opacity(0.2))
                .frame(width: 40, height: 5)
                .frame(maxHeight: .infinity, alignment: .top)
                .offset(y: 10)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .strokeBorder(.linearGradient(colors: [.white.opacity(0.2), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
                .preferredColorScheme(.dark)
        )
    }
    
    var arrow: some View {
        ZStack {
            Circle().strokeBorder(.primary.opacity(0.4), style: StrokeStyle(lineWidth: 5, dash: [1, 2]))
            Circle().strokeBorder(.primary.opacity(0.4), style: StrokeStyle(lineWidth: 15, dash: [1, 60]))
            Image("Arrow")
        }
        .frame(width: 93, height: 93)
    }
}

struct CustomSheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomSheet()
    }
}
