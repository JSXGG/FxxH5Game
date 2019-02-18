//
//  SwRequest.swift
//  SWJSQQSDK
//
//  Created by Baird-weng on 2018/7/25.
//  Copyright © 2018年 fymjgame. All rights reserved.
//

import Foundation
import Alamofire

enum MethodType {
    case get
    case post
}
class SWRequest {
    class func requestData(_ type : MethodType, URLString : String, parameters : [String : Any]? = nil, finishedCallback :  @escaping (_ result : Any) -> ()) {        
        // 1.获取类型
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        // 2.发送网络请求
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            // 3.获取结果
            guard let result = response.result.value else {
                print(response.result.error!)
                return
            }
            // 4.将结果回调出去
            finishedCallback(result)
        }
    }
}
