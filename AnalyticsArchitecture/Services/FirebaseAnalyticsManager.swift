//
//  FirebaseAnalyticsManager.swift
//  AnalyticsArchitecture
//
//  Created by Nikunj Modi on 02/02/25.
//

import Foundation
import Firebase

class FirebaseAnalyticsManager: AnalyticsManager {
    let serviceType: AnalyticsServiceType = .firebase

    func logEvent(name: String, parameters: [String: Any]?) {
        print("FirebaseAnalytics: \(name) : \(String(describing: parameters))")
        Analytics.logEvent(name, parameters: parameters)
    }
}
