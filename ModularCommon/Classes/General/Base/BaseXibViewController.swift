//
//  BaseXibViewController.swift
//  ModuleComm
//
//  Created by 孙梁 on 2021/3/1.
//

import UIKit

open class BaseXibViewController: UIViewController {

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "\(Self.self)", bundle: Bundle.sl_moduleBundle(Self.self, Self.description().components(separatedBy: ".").first ?? ""))
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
