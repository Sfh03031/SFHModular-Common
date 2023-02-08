//
//  Ex_UIView.swift
//  ModuleComm
//
//  Created by 孙梁 on 2021/3/1.
//

import Foundation
import UIKit

extension UIView {
    /// 从xib加载view
    /// - Parameter module: 从哪个模块
    /// - Returns: view
    static func sl_loadNib() -> UIView? {
        let moduleName = Self.description().components(separatedBy: ".").first ?? ""
        let bundle = Bundle.sl_moduleBundle(self, moduleName) ?? Bundle.main
        return bundle.loadNibNamed("\(self)", owner: nil, options: nil)?.first as? UIView
    }
}
