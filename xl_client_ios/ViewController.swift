//
//  ViewController.swift
//  xl_client_ios
//
//  Created by shen on 15/10/17.
//  Copyright © 2015年 shen. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    func btnClick() {
        
        let alertController = UIAlertController(title: "Hey AppCoda", message: "What do you want to do?", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 50))
        button.setTitle("呵呵", forState: .Normal)
        button.addTarget(self, action: "btnClick", forControlEvents: .TouchUpInside)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

