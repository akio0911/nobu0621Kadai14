//
//  RowView.swift
//  Kadai14
//
//  Created by nobu0621 on 2024/11/22.
//

import Foundation
import SwiftUI

struct RowView: View {
    @State var fruit: Fruit

    var body: some View {
        Button(action: {
            fruit.isChecked.toggle()
        }, label: {
            HStack {
                if fruit.isChecked {
                    Image(systemName: "checkmark")
                        .foregroundColor(.orange)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .frame(width: 20)
                } else {
                    Text("")
                        .frame(width: 20)
                }

                Text(fruit.name)

                Spacer()
            }
        })
        .frame(height: 25)
    }
}

#Preview {
    RowView(fruit: .init(name: "orange", isChecked: true))
}
