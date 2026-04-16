//
//  Profile.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import SwiftUI

struct Profile: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        Text("Profile!")
        Button("Back") {
            router.pop()
        }
    }
}

#Preview {
    Profile()
}
