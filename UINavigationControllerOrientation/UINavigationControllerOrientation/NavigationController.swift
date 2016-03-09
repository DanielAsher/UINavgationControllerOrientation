//
//  NavigationControllerViewController.swift
//  UINavigationControllerOrientation
//
//  Created by Daniel Asher on 09/03/2016.
//  Copyright © 2016 StoryShare. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        let supported = visibleViewController!.supportedInterfaceOrientations()
        switch supported.rawValue {
        case UIInterfaceOrientationMask.Portrait.rawValue: print(NavigationController.self, __FUNCTION__, "Portrait")
        case UIInterfaceOrientationMask.LandscapeLeft.rawValue: print(NavigationController.self, __FUNCTION__, "LandscapeLeft")
        default: print(NavigationController.self, __FUNCTION__, "Unknown") 
        } 
        
        return visibleViewController!.supportedInterfaceOrientations()
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        let prefered = visibleViewController!.preferredInterfaceOrientationForPresentation() 
        switch prefered.rawValue {
        case UIInterfaceOrientation.Portrait.rawValue: print(__FUNCTION__, "Portrait")
        case UIInterfaceOrientation.LandscapeLeft.rawValue: print(__FUNCTION__, "LandscapeLeft")
        default: print(NavigationController.self, __FUNCTION__, "Unknown", prefered.rawValue) 
        }
        return prefered
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
