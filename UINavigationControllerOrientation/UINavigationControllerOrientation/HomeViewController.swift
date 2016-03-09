//
//  ViewController.swift
//  UINavigationControllerOrientation
//
//  Created by Daniel Asher on 09/03/2016.
//  Copyright © 2016 StoryShare. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func toPortraitButton(sender: AnyObject) {
        if let portraitViewController = storyboard?.instantiateViewControllerWithIdentifier("PortraitViewController") {
            navigationController?.pushViewController(portraitViewController, animated: true)
        }
    }
    
    @IBAction func toLandscape(sender: AnyObject) {
        if let landscapeViewController = storyboard?.instantiateViewControllerWithIdentifier("LandscapeViewController") {
        navigationController?.pushViewController(landscapeViewController, animated: true)
        }
    }
   
    override func viewWillAppear(animated: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.forceLandscapeOrientation = false
        UIDevice.currentDevice().setValue(UIInterfaceOrientation.Portrait.rawValue, forKey: "orientation")
        }
      
   override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return .Portrait
    } 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

