//
//  FruitDetailView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 30/11/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                
                //HEADER
                FruitHeaderView(fruit: fruit)
                VStack(alignment:.leading,spacing: 20) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    //HEADLINE
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    //Nutrition
                  FruitNutrientsView(fruit: fruit)
                    
                    //Subheading
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    //DeScription
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                }//VStack
                .padding(.horizontal,20)
            } //Vstack
        } //Scrollview
        .edgesIgnoringSafeArea(.top)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
