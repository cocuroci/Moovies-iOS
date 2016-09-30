//
//  MainRouter.swift
//  Moovies
//
//  Created by Andre Cocuroci on 30/09/16.
//  Copyright © 2016 Cocuroci. All rights reserved.
//

import UIKit

class MainRouter {
    let window: UIWindow
    var viewController: UITabBarController!
    var moviesRouter: MoviesRouter!
    var searchRouter: SearchRouter!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func presentMain() {
        viewController = UITabBarController()
        viewController.tabBar.isTranslucent = false
        
        viewController.viewControllers = [
            moviesRouter.getViewController(),
            searchRouter.getViewController()
        ]
        
        window.rootViewController = viewController
    }
}
