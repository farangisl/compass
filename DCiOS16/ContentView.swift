//
//  ContentView.swift
//  DCiOS16
//
//  Created by Махмадёрова Фарангис Шухратовна on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var selectedMenu: Menu = .compass
    
    var body: some View {
        ZStack {
            switch selectedMenu {
            case .compass:
                MessageView()
            case .card:
                Text("Card")
            case .radial:
                Text("Radial")
            case .actionbutton:
                Text("Action Button")
            case .gooey:
                Text("Gooey")
            case .charts:
                Text("Charts")
            case .halfsheet:
                Text("Half Sheet")
            }
            
            Button("Show Menu") {
                showMenu = true
            }
            .sheet(isPresented: $showMenu) {
                MenuView(selectedMenu: $selectedMenu)
                    .presentationDetents([.medium, .large])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
