//
//  Route.swift
//  RouterLearn
//
//  Created by Muhammad Qamar on 16/04/2026.
//

import Foundation

enum Route: Hashable {
    case Login
    case Register
    case Main
    case Profile
    case Detail(id: Int)
    case Booking(id: Int)
}
