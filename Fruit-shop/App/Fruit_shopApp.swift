//
//  Fruit_shopApp.swift
//  Fruit-shop
//
//  Created by Sam Maurya on 13/11/21.
//

import SwiftUI

@main
struct Fruit_shopApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
