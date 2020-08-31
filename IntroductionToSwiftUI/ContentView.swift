//
//  ContentView.swift
//  IntroductionToSwiftUI
//
//  Created by Ederson on 31/08/20.
//  Copyright © 2020 EBM Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: SandwichStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCard(sandwich: sandwich)
                }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationBarTitle("Sandwiches")
            
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
    
    func makeSandwich() {
        withAnimation {
            store.sandwiches.append(Sandwich(name: "Patty melt", ingredientCount: 3))
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation {
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteSandwiches(offset: IndexSet) {
        withAnimation {
            store.sandwiches.remove(atOffsets: offset)
        }
    }
}

struct SandwichCard: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(8)
                .aspectRatio(contentMode: .fill)
                
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) igredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: sandwichStore)
    }
}
