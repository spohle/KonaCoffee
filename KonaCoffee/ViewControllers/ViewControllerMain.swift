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
        let viewControllerMap = ViewControllerMap()
        let mapImage = resizeImage(image: UIImage(named: "Icon_Map")!, newWidth: 30)?.tintWithColor(color: UIColor.orange)
        viewControllerMap.tabBarItem = UITabBarItem(title: "Map", image: mapImage, tag: 0)
        viewControllerMap.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.lightGray], for: .normal)
        viewControllerMap.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.orange], for: .selected)
        
        
        let mapVC2 = ViewControllerList()
        mapVC2.tabBarItem = UITabBarItem(title: "List", image: nil, tag: 1)
        
       
        let controllers = [viewControllerMap, mapVC2]
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

