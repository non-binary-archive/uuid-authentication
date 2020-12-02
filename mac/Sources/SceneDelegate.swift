//
//  SceneDelegate.swift
//  Example
//
//  Created by Luna Graysen on 2020-12-02.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: Properties
    var window: UIWindow?

    // MARK: UIWindowSceneDelegate
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            fatalError("Something very bad has happened.")
        }
        
        let window = UIWindow(windowScene: windowScene)
        
        AuthenticationService.validateId(id: AuthenticationService.getDeviceId()) { (user) in
            if let user = user {
                window.rootViewController = UIHostingController(rootView: HomeView(user: user))
            } else {
                window.rootViewController = WelcomeViewController()
            }
            
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
