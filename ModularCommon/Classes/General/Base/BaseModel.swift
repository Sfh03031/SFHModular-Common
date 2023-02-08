//
//  BaseModel.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/8/27.
//  Copyright © 2020 孙梁. All rights reserved.
//

import UIKit
import HandyJSON
import RxSwift

/**
 model base类, 遵守HandyJSON协议进行JSON序列化
 */
open class BaseModel: NSObject, HandyJSON {
    
    /// 数据更新完成
    public let haveUploadComplete = PublishSubject<Bool>()
    public let bag = DisposeBag()
    required public override init() { }
    
    /// 复制本体, 深拷贝
    open func copy<T: HandyJSON>(_ type: T.Type) -> T? {
        if let json = toJSON(),
            let model = T.deserialize(from: json) {
            return model
        }
        return nil
    }

    /// 更新本体, 不是创建另一个代替自己
    open class func upload<T: BaseModel>(_ object: T?, from: T?) {
        guard var object = object, let from = from else { return }
        JSONDeserializer.update(object: &object, from: from.toJSON())
        object.haveUploadComplete.onNext(true)
    }

    /// 可进行key的映射
    open func mapping(mapper: HelpingMapper) {

    }
    
    /// 序列化完毕
    open func didFinishMapping() {

    }
}
