//
//  SandwichStore.swift
//  IntroductionToSwiftUI
//
//  Created by Ederson on 31/08/20.
//  Copyright © 2020 EBM Software. All rights reserved.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let sandwichStore = SandwichStore(sandwiches: sandwichList)
