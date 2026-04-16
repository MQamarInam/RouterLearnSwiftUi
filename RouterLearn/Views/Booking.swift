//
//  Booking.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import SwiftUI

struct Booking: View {
    
    let id: Int
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        Text("Hello, World! \(id)")
        
        Button("Booking") {
            router.popToRoot()
        }
        
    }
}

#Preview {
    Booking(id: 123)
}
