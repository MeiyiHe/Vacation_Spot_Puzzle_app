//
//  ViewController.swift
//  VacationSpotAndPuzzle
//
//  Created by Lexi He on 1/16/19.
//  Copyright © 2019 Meiyi He. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabBar.barTintColor = UIColor(red: 38/255, green: 196/255, blue: 133/255, alpha: 1)
        setUpTabBar()
    }
    
    func setUpTabBar() {
        
        // initialize view controllers
        
        let placeTableViewController = UINavigationController(rootViewController: PlaceTableViewController())
        placeTableViewController.tabBarItem.image = UIImage(named: "star_black")?.withRenderingMode(.alwaysOriginal)
        placeTableViewController.tabBarItem.selectedImage = UIImage(named: "star_white")?.withRenderingMode(.alwaysOriginal)
        
        
        let puzzleViewController = UINavigationController(rootViewController: PuzzleViewController())
        puzzleViewController.tabBarItem.image = UIImage(named: "video_black")?.withRenderingMode(.alwaysOriginal)
        puzzleViewController.tabBarItem.selectedImage = UIImage(named: "video_white")?.withRenderingMode(.alwaysOriginal)
        
        viewControllers = [placeTableViewController, puzzleViewController]
        
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: -4, right: 0 )
        }
    }
}

