//
//  Sandwich.swift
//  IntroductionToSwiftUI
//
//  Created by Ederson on 31/08/20.
//  Copyright © 2020 EBM Software. All rights reserved.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let sandwichList = [
    Sandwich(name: "Club", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Pastrami on rye", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "French dip", ingredientCount: 3, isSpicy: false),
    Sandwich(name: "Banh mi", ingredientCount: 5, isSpicy: true),
    Sandwich(name: "ice cream sandwich", ingredientCount: 2, isSpicy: false),
    Sandwich(name: "Croque madame", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Hot dog", ingredientCount: 2, isSpicy: true),
    Sandwich(name: "Fluffernutter", ingredientCount: 2, isSpicy: false),
    Sandwich(name: "Avocado toast", ingredientCount: 3, isSpicy: true),
    Sandwich(name: "Gua bao", ingredientCount: 4, isSpicy: true),
]
