//
//  ContentView.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import SwiftUI

struct Detail: View {
    
    let id: Int
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        VStack {
            Text("Package ID: \(id)")
            
            Button("Booking") {
                router.push(.Booking(id: id))
            }
        }
        
    }
}

#Preview {
    PreviewWrapper {
        Detail(id: 1)
    }
}
//#Preview {
//    Detail(id: 1)
//}

struct PreviewWrapper<Content: View>: View {
    
    let content: Content
    let router = Router()
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        content
            .environmentObject(router)
    }
}
