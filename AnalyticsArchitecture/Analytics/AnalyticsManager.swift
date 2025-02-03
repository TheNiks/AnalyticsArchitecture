//
//  AnalyticsManager.swift
//  AnalyticsArchitecture
//
//  Created by Nikunj Modi on 02/02/25.
//

import Foundation

protocol AnalyticsManager {
    var serviceType: AnalyticsServiceType { get }
    func logEvent(name: String, parameters: [String: Any]?)
}
