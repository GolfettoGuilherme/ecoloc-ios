//
//  SceneDelegate.swift
//  Ecoloc
//
//  Created by Guilherme Golfetto on 14/11/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = HomeViewController()
        self.window?.windowScene = windowScene
        self.window?.makeKeyAndVisible()
    }

}

