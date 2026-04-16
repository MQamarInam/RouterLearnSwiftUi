//
//  ContentView.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import SwiftUI

struct Root: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        NavigationStack(path: $router.path) {
            rootView()
                .navigationDestination(for: Route.self) { route in
                    destinationView(for: route)
                }
        }
        
    }
    
}

#Preview {
    PreviewWrapper {
        Root()
    }
}

extension Root {
    
    @ViewBuilder
    private func rootView() -> some View {
        switch router.root {
        case .Login:
            Login()
        case .Main:
            Main()
        default:
            EmptyView()
        }
    }
    
    @ViewBuilder
    private func destinationView(for route: Route) -> some View {
        switch route {
            
        case .Register:
            Register()
            
        case .Login:
            Login()
            
        case .Profile:
            Profile()
            
        case .Main:
            Main()
            
        case .Detail(let id):
            Detail(id: id)
            
        case .Booking(let id):
            Booking(id: id)
            
        }

    }
    
}
