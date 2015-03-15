//
//  NetworkManager.swift
//
//  Created by coderCSF on 15/3/5.
//  Copyright (c) 2015年 coderCSF. All rights reserved.
//

import UIKit

class NetWorkManager {
    /// 单例
    static let shareInstance = NetWorkManager()
    
    
    // 全局的net
    let net = SimpleNetWork()
    
    /**
        隔离的一层网络
    */
    func JSON(method: SimpleNetWork.HTTPMethod,_ urlString: String,_ params: [String: String]?,_ success: Success, _ fail: Fail){
        net.JSON(method, urlString, params, success, fail)
    }
}