//
//  ContentView.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import SwiftUI

struct Login: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        VStack {
            Text("Login Screen")
            
            Button("Login") {
                router.setRoot(.Main)
            }
        }
        
    }
}

#Preview {
    Login()
}
