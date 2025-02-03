//
//  MixpanelAnalyticsManager.swift
//  AnalyticsArchitecture
//
//  Created by Nikunj Modi on 02/02/25.
//

import Foundation
import Mixpanel

class MixpanelAnalyticsManager: AnalyticsManager {
    let serviceType: AnalyticsServiceType = .mixpanel

    init() {
        Mixpanel.initialize(token: "YOUR_MIXPANEL_TOKEN", trackAutomaticEvents: true)
    }
    
    func logEvent(name: String, parameters: [String : Any]?) {
        print("FirebaseAnalytics: \(name) : \(String(describing: parameters))")
        Mixpanel.mainInstance().track(event: name)
    }
}
