//
//  SLNoNetworkViewController.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/12/14.
//

import UIKit

/// 无网络时显示的页面
class SLNoNetworkViewController: BaseXibViewController {

    @objc public var refreshEvent: (() -> Void)?
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.image = noNetworkPageImage
        }
    }
    @IBOutlet weak var descLabel: UILabel! {
        didSet {
            descLabel.text = noNetworkPageDesc
        }
    }
    @IBOutlet weak var gotoSetPageBtn: UIButton!
    @IBOutlet weak var refreshBtn: UIButton! {
        didSet {
            refreshBtn.isHidden = !noNetworkPageHaveRefresh
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gotoSetPageBtnAction(_ sender: Any) {
        if let url = URL(string: "App-Prefs:root") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

    @IBAction func refreshBtnAction(_ sender: Any) {
        refreshEvent?()
    }
}
