//
//  MenuView.swift
//  DCiOS16
//
//  Created by Махмадёрова Фарангис Шухратовна on 05.04.2023.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedMenu: Menu
    
    var body: some View {
        List(navigationItems) { item in
            Button {
                selectedMenu = item.menu
            } label: {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                .padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedMenu: .constant(.compass))
    }
}
