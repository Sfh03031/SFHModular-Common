//
//  Router.swift
//  SLProjectModuleComm
//
//  Created by 孙梁 on 2021/2/4.
//

import UIKit
import CTMediator

// MARK: - Guide
public extension CTMediator {
    func login() -> UIViewController? {
        performTarget("Login", action: "LoginViewController", params: nil, shouldCacheTarget: false) as? UIViewController
    }
}

// MARK: - Home
public extension CTMediator {
    func home() -> UIViewController? {
        performTarget("Home", action: "HomeViewController", params: nil, shouldCacheTarget: false) as? UIViewController
    }
}

// MARK: - Second
public extension CTMediator {
    func second() -> UIViewController? {
        performTarget("Second", action: "SecondViewController", params: nil, shouldCacheTarget: false) as? UIViewController
    }
}

// MARK: - Third
public extension CTMediator {
    func profile() -> UIViewController? {
        performTarget("Profile", action: "ProfileViewController", params: nil, shouldCacheTarget: false) as? UIViewController
    }
}
