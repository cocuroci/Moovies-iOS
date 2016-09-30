//
//  AppDependencies.swift
//  Moovies
//
//  Created by Andre Cocuroci on 30/09/16.
//  Copyright © 2016 Cocuroci. All rights reserved.
//

import UIKit

struct AppDependencies {
    let window: UIWindow
    
    let mainRouter: MainRouter!
    let moviesRouter: MoviesRouter!
    let searchRouter: SearchRouter!
    
    init(window: UIWindow) {
        self.window = window
        
        mainRouter = MainRouter(window: self.window)
        moviesRouter = MoviesRouter()
        searchRouter = SearchRouter()
        
        mainRouter.moviesRouter = moviesRouter
        mainRouter.searchRouter = searchRouter
    }
    
    func presentUI() {
        mainRouter.presentMain()
    }
}
