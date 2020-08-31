//
//  SandwichDetail.swift
//  IntroductionToSwiftUI
//
//  Created by Ederson on 31/08/20.
//  Copyright © 2020 EBM Software. All rights reserved.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image(sandwich.thumbnailName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .navigationBarTitle(sandwich.name)
                .edgesIgnoringSafeArea(.bottom)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Text("Spacy")
                    Spacer()
                }
                .padding(.all)
                .font(.headline)
                .background(Color.red)
                .foregroundColor(Color.yellow)
                .transition(.move(edge: .bottom))
            }
        }
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        SandwichDetail(sandwich: sandwichList[0])
    }
}
