//
//  UserMenuController.swift
//  LoginApp_*
//
//  Created by Артем Иванов on 31.10.2024.
//

import UIKit

final class UserMenuController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let apperance = UITabBarAppearance()
        tabBar.standardAppearance = apperance
        tabBar.scrollEdgeAppearance = apperance
        
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let homeVC = $0 as? HomeViewController {
                homeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userVC = navigationVC.topViewController as? UserInfoViewController
                userVC?.user = user
            }
        }
    }
}
