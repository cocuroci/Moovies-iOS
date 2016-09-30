//
//  SearchRouter.swift
//  Moovies
//
//  Created by Andre Cocuroci on 30/09/16.
//  Copyright © 2016 Cocuroci. All rights reserved.
//

import UIKit

class SearchRouter {
    var viewController: UIViewController!
    
    func getViewController() -> UIViewController {
        viewController = UIViewController()
        let nav = UINavigationController(rootViewController: viewController)
        return nav
    }
}
