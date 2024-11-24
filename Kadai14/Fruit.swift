//
//  Fruit.swift
//  Kadai14
//
//  Created by nobu0621 on 2024/11/22.
//

import Foundation

struct Fruit: Identifiable, Hashable {
    let id = UUID()
    let name: String
    var isChecked: Bool
}
