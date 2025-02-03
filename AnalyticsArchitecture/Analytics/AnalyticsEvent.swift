//
//  AnalyticsEvent.swift
//  AnalyticsArchitecture
//
//  Created by Nikunj Modi on 02/02/25.
//

import Foundation

protocol AnalyticsEventProtocol {
    var name: String { get }
    var parameters: [String: Any] { get }
    var targetServices: [AnalyticsServiceType] { get }
}

// Define supported analytics platforms
enum AnalyticsServiceType {
    case firebase, mixpanel
}

// Specific Events
struct LoginEvent: AnalyticsEventProtocol {
    let success: Bool
    
    var name: String { "user_login" }
    var parameters: [String: Any] { ["success": success] }
    var targetServices: [AnalyticsServiceType] { [.firebase] }
}

struct PurchaseEvent: AnalyticsEventProtocol {
    let item: String
    let price: Double

    var name: String { "item_purchased" }
    var parameters: [String: Any] { ["item": item, "price": price] }
    var targetServices: [AnalyticsServiceType] { [.firebase, .mixpanel] }
}

struct AppLaunchEvent: AnalyticsEventProtocol {
    var name: String { "app_launch" }
    var parameters: [String: Any] { [:] }
    var targetServices: [AnalyticsServiceType] { [.mixpanel] }
}
