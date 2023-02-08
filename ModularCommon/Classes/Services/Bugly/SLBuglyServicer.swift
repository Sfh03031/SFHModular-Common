//
//  SLBuglyServicer.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/12/18.
//

import UIKit
import Bugly

/// bugly相关
public class SLBuglyServicer: NSObject {

    public static let shared = SLBuglyServicer()
    
    public func config(_ appId: String) {
        let config = BuglyConfig()
        #if DEBUG
        config.debugMode = true
        #else
        config.debugMode = false
        #endif
        Bugly.start(withAppId: appId, config: config)
    }
    
    /// 设置用户标识
    public func setUserId(_ userId: String) {
        Bugly.setUserIdentifier(userId)
    }
    /// 设置标签
    public func setTag(_ tag: Int) {
        Bugly.setTag(UInt(tag))
    }
}
