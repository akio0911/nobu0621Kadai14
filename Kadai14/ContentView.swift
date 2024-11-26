//
//  ContentView.swift
//  Kadai14
//
//  Created by nobu0621 on 2024/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var isModal: Bool = false
    @State var fruitArray = [
        Fruit(name: "りんご", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true)
    ]

    var body: some View {
        NavigationStack {
            List(fruitArray, id: \.self) { fruit in
                RowView(fruit: fruit)
            }
            .listStyle(.inset)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isModal = true
                    }, label: {
                        Image(systemName: "plus")
                    })
            )
        }
        .fullScreenCover(
            isPresented: $isModal,
            content: {
                ModalView(isModal: $isModal, fruitArray: $fruitArray)
            }
        )
    }
}

#Preview {
    ContentView(isModal: false)
}
