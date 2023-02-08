//
//  BaseView.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/8/27.
//  Copyright © 2020 孙梁. All rights reserved.
//

import UIKit
import RxSwift

/// view base类
open class BaseView: UIView, ViewLifeProtocol {

    public let bag = DisposeBag()
    /// tableView下拉刷新
    public let refreshEvent = PublishSubject<Bool>()
    /// tableView上拉刷新
    public let loadMoreEvent = PublishSubject<Bool>()

    public weak var parentVC: BaseViewController?

    var weakself: BaseView? {
        weak var weakself = self
        return weakself
    }

    public required init() {
        super.init(frame: CGRect.zero)
        config()
        bind()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        config()
    }
    
    open func bind() {
        
    }

    open func viewDidLoad() {

    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
