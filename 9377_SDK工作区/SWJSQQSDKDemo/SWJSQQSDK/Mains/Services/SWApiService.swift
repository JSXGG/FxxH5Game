//
//  SWApiService.swift
//  SWJSQQSDK
//
//  Created by Baird-weng on 2018/7/25.
//  Copyright © 2018年 fymjgame. All rights reserved.
//  @escaping (_ result : Any) -> ())

import Foundation

class SWApiService: NSObject {
    class func apiLogin( userName : String, passWord : String, finishedCallback :  @escaping (_ result : Any) -> ()) {
        
        SWRequest.requestData(.get, URLString: "", parameters: ["ket":"123"]) { (ret) in
            finishedCallback(ret)
        }
      }
    }

