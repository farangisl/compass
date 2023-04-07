//
//  ContentView.swift
//  DCiOS16
//
//  Created by Махмадёрова Фарангис Шухратовна on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @AppStorage("selectedMenu") var selectedMenu: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded { value in
                showMenu = true
            }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
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
                DetailView()
            case .halfsheet:
                MenuView()
            }
        }
        .onTapGesture {}
        .gesture(longPress)
        .sheet(isPresented: $showMenu) {
            MenuView()
                .presentationDetents([.medium, .large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
