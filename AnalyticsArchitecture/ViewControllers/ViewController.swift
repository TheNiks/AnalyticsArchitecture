//
//  ViewController.swift
//  AnalyticsArchitecture
//
//  Created by Nikunj Modi on 02/02/25.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()

        // Log events
        analyticsCoordinator.logEvent(LoginEvent(success: true))
        analyticsCoordinator.logEvent(PurchaseEvent(item: "iPhone 14", price: 999.99))
    }
}

