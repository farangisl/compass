//
//  DetailView.swift
//  DCiOS16
//
//  Created by Махмадёрова Фарангис Шухратовна on 06.04.2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            Text("12 transactions".uppercased())
                .font(.subheadline.weight(.medium))
                .foregroundColor(.secondary)
                .padding(.top, 20)
            Text("Entertainment")
                .font(.largeTitle.width(.expanded).weight(.bold))
            
            ViewThatFits {
                HStack(alignment: .top, spacing: 20) {
                    VStack {
                        ChartView()
                        GridView()
                    }
                    VStack {
                        CardView()
                        GridView()
                    }
                    .frame(width: 400)
                }
                
                VStack {
                    ChartView()
                    CardView()
                    GridView()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
