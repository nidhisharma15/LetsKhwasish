//
//  HomeViewController.swift
//  LetsKhwasish
//
//  Created by Nidhi.sharma3 on 07/06/20.
//  Copyright © 2020 Nidhi.sharma3. All rights reserved.
//

import UIKit
import SideMenu
class HomeViewController: UIViewController,SideMenuNavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //setupSideMenu()
        // Do any additional setup after loading the view.
    }
    
    private func setupSideMenu() {
        // Define the menus
        SideMenuManager.default.leftMenuNavigationController = storyboard?.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? SideMenuNavigationController
        SideMenuManager.default.rightMenuNavigationController = storyboard?.instantiateViewController(withIdentifier: "RightMenuNavigationController") as? SideMenuNavigationController
        
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
        SideMenuManager.default.addPanGestureToPresent(toView: navigationController!.navigationBar)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: view)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let sideMenuNavigationController = segue.destination as? SideMenuNavigationController else { return }
//        sideMenuNavigationController.settings = makeSettings()
//    }
    
    
    //SideMenu Delegate's
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Appearing! (animated: \(animated))")
    }
    
    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Appeared! (animated: \(animated))")
    }
    
    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappearing! (animated: \(animated))")
    }
    
    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappeared! (animated: \(animated))")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
