//
//  Ex_Bundle.swift
//  ModuleComm
//
//  Created by 孙梁 on 2021/3/1.
//

import Foundation

extension Bundle {
    /// 跨模块获取bundle, 获取xib storyboard
    static func sl_moduleBundle(_ forClass: AnyClass, _ module: String? = nil) -> Bundle? {
        let bundle = Bundle(for: forClass)
        guard let bundleURL = bundle.url(forResource: module, withExtension: "bundle") else {
            return nil
        }
        return Bundle(url: bundleURL)
    }
}
