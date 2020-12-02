//
//  AppDelegate.swift
//  Example
//
//  Created by Luna Graysen on 2020-12-02.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: UIApplicationDelegate Lifecycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}
