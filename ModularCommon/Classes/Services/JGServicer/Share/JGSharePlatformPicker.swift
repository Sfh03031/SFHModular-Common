//
//  SLSharePlatformPicker.swift
//  SLJGServicer
//
//  Created by 孙梁 on 2021/1/8.
//

import UIKit
import pop
import SLSupportLibrary
import SLJGSDK

public class JGSharePlatformPicker: BaseXibViewController {
    
    public var platforms: [JSHAREPlatform] = [] {
        didSet {
            setUI()
        }
    }
    public var complete: ((JSHAREPlatform) -> Void)?
    
    @IBOutlet weak var contentView: UIView! {
        didSet {
            contentView.backgroundColor = R.color.view_gray1()
        }
    }
    @IBOutlet weak var wechatSessionView: UIStackView! {
        didSet {
            wechatSessionView.addTarget(target: self, action: #selector(wechatSessionAction))
        }
    }
    @IBOutlet weak var wechatTimelineView: UIStackView! {
        didSet {
            wechatTimelineView.addTarget(target: self, action: #selector(wechatTimelineAction))
        }
    }
    @IBOutlet weak var sessionImageView: UIImageView! {
        didSet {
            sessionImageView.image = R.image.wechat50()
        }
    }
    @IBOutlet weak var timelineImageView: UIImageView! {
        didSet {
            timelineImageView.image = R.image.wechatTimeLine50()
        }
    }
    @IBOutlet weak var bottomGap: NSLayoutConstraint!

    public init(_ platforms: [JSHAREPlatform] = [.wechatSession, .wechatTimeLine], complete: ((JSHAREPlatform) -> Void)?) {
        super.init(nibName: nil, bundle: nil)
        modalPresentationStyle = .overFullScreen
        modalTransitionStyle = .crossDissolve
        self.platforms = platforms
        self.complete = complete
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        modalPresentationStyle = .overFullScreen
        modalTransitionStyle = .crossDissolve
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        showAnim()
    }
    
    private func setUI() {
        wechatSessionView.isHidden = !platforms.contains(.wechatSession)
        wechatTimelineView.isHidden = !platforms.contains(.wechatTimeLine)
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        if touches.contains(where: { $0.view == view }) {
            hide()
        }
    }
}

public extension JGSharePlatformPicker {
    @objc private func wechatSessionAction() {
        complete?(.wechatSession)
        hide()
    }
    @objc private func wechatTimelineAction() {
        complete?(.wechatTimeLine)
        hide()
    }
    
    private func showAnim() {
        let anim = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        anim?.toValue = 10
        bottomGap.pop_add(anim, forKey: nil)
    }
    @objc private func hide() {
        let anim = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        anim?.toValue = -250
        bottomGap.pop_add(anim, forKey: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func show() {
        guard JSHAREService.isWeChatInstalled() else { return }
        cur_visible_vc?.present(self, animated: true, completion: nil)
    }
}
