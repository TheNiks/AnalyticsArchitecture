//
//  AnalyticsCoordinator.swift
//  AnalyticsArchitecture
//
//  Created by Nikunj Modi on 02/02/25.
//

import Foundation

// Initialize analytics services
let analyticsCoordinator = AnalyticsCoordinator(analyticsManagers: [
    FirebaseAnalyticsManager(),
    MixpanelAnalyticsManager()
])

class AnalyticsCoordinator {
    private let analyticsManagers: [AnalyticsManager]

    init(analyticsManagers: [AnalyticsManager]) {
        self.analyticsManagers = analyticsManagers
    }

    func logEvent(_ event: AnalyticsEventProtocol) {
        analyticsManagers
            .filter { event.targetServices.contains($0.serviceType) }
            .forEach { $0.logEvent(name: event.name, parameters: event.parameters) }
    }
}
