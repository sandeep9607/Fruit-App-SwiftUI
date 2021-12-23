//
//  FruitRowView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 30/11/21.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        
        HStack {
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 8) {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } // VStack
        } // HStack
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
    }
}
