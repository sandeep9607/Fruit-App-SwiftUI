//
//  OnboardingView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 16/11/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTY
    var fruits: [Fruit] = fruitsData
    //MARK: BODY
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit: item)
            }
            
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
