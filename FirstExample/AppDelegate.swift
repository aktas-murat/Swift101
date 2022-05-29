//
//  AppDelegate.swift
//  FirstExample26.05.2022
//
//  Created by Murat Aktaş on 5/26/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		
		window = UIWindow()
		window?.rootViewController = UINavigationController(rootViewController: SecondTestViewController())
		window?.makeKeyAndVisible()
		
		return true
	}


}

