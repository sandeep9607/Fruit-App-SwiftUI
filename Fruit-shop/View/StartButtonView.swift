//
//  StartButtonView.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 16/11/21.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        
        //MARK: - PROPERTY
        
        //MARK: - BODY
        
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10 )
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }//Button
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
    }
}
