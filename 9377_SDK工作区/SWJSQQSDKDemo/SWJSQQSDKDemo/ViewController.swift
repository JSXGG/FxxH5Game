//
//  ViewController.swift
//  SWJSQQSDKDemo
//
//  Created by Baird-weng on 2018/7/20.
//  Copyright © 2018年 fymjgame. All rights reserved.
//

import UIKit
import SWJSQQSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purple;
        SWSDKHelper.SDKInit(gameId: "12", gameName: "test", gameRefer: "12312")
        SWSDKHelper.showLoginViewController(target: self)
        
        
//        SWApiService.
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

