//
//  ContentView.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import SwiftUI

struct Main: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        VStack(spacing: 20) {
                    
            Text("Home")
            
            Button("Detail") {
                router.push(.Detail(id: 123))
            }
            
            Button("Profile") {
                router.push(.Profile)
            }
            
            Button("Logout") {
                router.setRoot(.Login)
            }
        }
        
    }
}

#Preview {
    Main()
}
