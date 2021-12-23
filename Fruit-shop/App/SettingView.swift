//
//  SettingView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 06/12/21.
//

import SwiftUI

struct SettingView: View {
    
    // MARK: - property
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 20){
                    Text("Hello World")
                } //VStack
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
