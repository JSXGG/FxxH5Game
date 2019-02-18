//
//  SWLoginViewController.swift
//  SWJSQQSDK
//
//  Created by Baird-weng on 2018/7/20.
//  Copyright © 2018年 fymjgame. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class SWLoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        let testView = UIView()
        testView.backgroundColor = UIColor.red
        self.view.addSubview(testView)
        testView.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.center.equalTo(self.view)
        }
    }
}
