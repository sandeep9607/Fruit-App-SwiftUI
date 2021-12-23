//
//  FruitNutrientsView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 06/12/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    let fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Vitamins"]
    
    var body: some View {
        
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self){ item in
                    Divider().padding(.vertical,2)
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } // HStack
                }
            }
        } // GroupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
