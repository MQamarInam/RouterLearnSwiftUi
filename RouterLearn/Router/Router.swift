//
//  Router.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.


import Foundation
import SwiftUI

final class Router: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var root: Route = .Main
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path = NavigationPath()
    }
    
    func setRoot(_ route: Route) {
        root = route
        path = NavigationPath()
    }
    
}
