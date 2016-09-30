//
//  App.swift
//  Moovies
//
//  Created by Andre Cocuroci on 30/09/16.
//  Copyright © 2016 Cocuroci. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class App: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appDepencendies: AppDependencies? = nil
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        FIRApp.configure()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        appDepencendies = AppDependencies(window: window!)
        appDepencendies?.presentUI()
        
        window?.backgroundColor = UIColor.red
        window?.makeKeyAndVisible()
        
        return true
    }
}
