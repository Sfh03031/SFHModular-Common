//
//  BaseTableViewCell.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/9/7.
//  Copyright © 2020 孙梁. All rights reserved.
//

import UIKit
import RxSwift

open class BaseTableViewCell: UITableViewCell {

    public let bag = DisposeBag()
    public var resetBag = DisposeBag() // 每次复用会重置

    open override func prepareForReuse() {
        super.prepareForReuse()
        resetBag = DisposeBag()
    }
}
