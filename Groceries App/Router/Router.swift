//
//  Router.swift
//  Groceries App
//
//  Created by Fazli Altun on 17.02.2024.
//

import UIKit

final class Router {
    let navigation: UINavigationController
        
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    private func push(controller: UIViewController) {
        navigation.pushViewController(controller, animated: true)
    }
    
    private func pop() {
        navigation.popViewController(animated: true)
    }
    
    func pushCategoriesVC() {
        let controller = CategoriesViewController(router: self)
        push(controller: controller)
    }
}
