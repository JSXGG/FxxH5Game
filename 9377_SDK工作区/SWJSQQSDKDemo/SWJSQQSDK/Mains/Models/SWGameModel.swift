//
//  SWGameModel.swift
//  SWJSQQSDK
//
//  Created by Baird-weng on 2018/7/20.
//  Copyright © 2018年 fymjgame. All rights reserved.
//

import Foundation
final  class SWGameModel: NSObject {
    static let shared = SWGameModel.init()
    private override init() {}
    var gameID = ""
    var gameRefre = ""
    var gameName = ""
}
