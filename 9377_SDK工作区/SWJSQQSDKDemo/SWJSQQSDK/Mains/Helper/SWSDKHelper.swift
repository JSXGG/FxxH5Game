//
//  SWJModel.swift
//  SWJSQQSDK
//
//  Created by Baird-weng on 2018/7/20.
//  Copyright © 2018年 fymjgame. All rights reserved.
//

import Foundation
import UIKit

public class SWSDKHelper: NSObject {
    static public func SDKInit(gameId:String,gameName:String,gameRefer:String) -> Void {
        SWGameModel.shared.gameID = gameId;
        SWGameModel.shared.gameName = gameName;
        SWGameModel.shared.gameRefre = gameRefer;
    }
    static public func showLoginViewController(target:UIViewController)->Void{
        let vc =  SWLoginViewController()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
            target.present(vc, animated: true, completion: nil)
        }
    }
    static public func getMd5_Str(str:String)->String{
        
        return "12312313"
    }
}
