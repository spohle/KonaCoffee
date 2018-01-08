//
//  ViewControllerMain.swift
//  KonaCoffee
//
//  Created by Sven Pohle on 1/6/18.
//  Copyright © 2018 Sven Pohle. All rights reserved.
//

import UIKit

class ViewControllerMain: UITabBarController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.ThemeTab.background
        self.tabBar.barTintColor = UIColor.ThemeTab.barTint
        self.tabBar.tintColor = UIColor.ThemeTab.barText
        
        self.createTabBarItems()
    }
    
    func createTabBarItems() {
        let mapVC = ViewControllerMap()
        let mapImage = resizeImage(image: UIImage(named: "Icon_Map")!, newWidth: 30)?.tintWithColor(color: UIColor.orange)
        mapVC.tabBarItem = UITabBarItem(title: "Map", image: mapImage, tag: 0)
        
        let mapVC2 = ViewControllerMap()
        mapVC2.tabBarItem = UITabBarItem(title: "MAP2", image: nil, tag: 1)
        
        let mapVC3 = ViewControllerMap()
        mapVC3.tabBarItem = UITabBarItem(title: "MAP3", image: nil, tag: 2)
        
        let controllers = [mapVC, mapVC2, mapVC3]
        self.viewControllers = controllers
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

