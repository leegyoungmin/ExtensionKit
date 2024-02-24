//
//  SceneDelegate.swift
//  ExtensionDemoApp
//
//  Copyright (c) 2024 Minii All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = MainViewController()
    window?.makeKeyAndVisible()
  }
}
