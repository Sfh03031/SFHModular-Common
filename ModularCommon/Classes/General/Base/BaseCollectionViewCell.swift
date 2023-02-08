//
//  BaseCollectionViewCell.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/12/14.
//

import UIKit
import RxSwift

open class BaseCollectionViewCell: UICollectionViewCell {
    public let bag = DisposeBag()
    public var resetBag = DisposeBag() // 每次复用会重置

    open override func prepareForReuse() {
        super.prepareForReuse()
        resetBag = DisposeBag()
    }
}
