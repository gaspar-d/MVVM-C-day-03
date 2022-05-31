//
//  SceneDelegate.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = (scene as? UIWindowScene) else { return }
		
		let navigationController = UINavigationController()
		let coordinator = MainCoordinator(navigationController: navigationController)
		coordinator.start()
		
		let safeWindow = UIWindow(windowScene: windowScene)
		safeWindow.rootViewController = navigationController
		safeWindow.makeKeyAndVisible()
		
		self.window = safeWindow
	}

	func sceneDidDisconnect(_ scene: UIScene) {}

	func sceneDidBecomeActive(_ scene: UIScene) {}

	func sceneWillResignActive(_ scene: UIScene) {}

	func sceneWillEnterForeground(_ scene: UIScene) {}

	func sceneDidEnterBackground(_ scene: UIScene) {}


}

