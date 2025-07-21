//
//  UserDefaults+Extensions.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import Foundation

extension UserDefaults {
    private struct Keys {
        static let showTabbarView = "showTabbarView"
    }

    static var showTabBarView: Bool {
        get {
            standard.bool(forKey: Keys.showTabbarView)
        }

        set {
            standard.set(newValue, forKey: Keys.showTabbarView)
        }
    }
}
