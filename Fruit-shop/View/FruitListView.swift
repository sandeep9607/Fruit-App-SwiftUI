//
//  FruitListView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 30/11/21.
//

import SwiftUI

struct FruitListView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits : [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            } // LIST
            .navigationTitle("Fruits")
            
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }).sheet(isPresented: $isShowingSettings, onDismiss: nil, content: {
                SettingView()
            })
            )
           
                                                 
                                                
            
        }
    }
}
//            .navigationBarItems(trailing:
                                //            .navigationBarTitleDisplayMode(.inline)
                           
                                
                                
                                struct FruitListView_Previews: PreviewProvider {
                static var previews: some View {
                    FruitListView(fruits: fruitsData)
                }
            }
