//
//  FruitHeaderView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 03/12/21.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
        } //ZStack
        .frame( height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5   )){
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
