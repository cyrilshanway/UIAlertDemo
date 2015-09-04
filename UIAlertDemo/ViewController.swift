//
//  ViewController.swift
//  UIAlertDemo
//
//  Created by Cyrilshanway on 2015/9/4.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Hey", message: "What do u do?", preferredStyle: UIAlertControllerStyle.ActionSheet)// <-在 UIAlertControllerStyle更換actionsheet or alert
        
        
        
        let callAction = UIAlertAction(title: "call", style: UIAlertActionStyle.Default, handler: {
            action in
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry", preferredStyle: UIAlertControllerStyle.Alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
        })
        alertController.addAction(callAction)
        
        
        
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alertController.addAction(defaultAction)
        
        
        
        
        presentViewController(alertController, animated: true, completion: nil)
        

        
        
    }
}

