//
//  SLVisitorViewController.swift
//  SLCommProject
//
//  Created by 孙梁 on 2020/12/12.
//

import UIKit

/// 未登录时显示的页面
class SLVisitorViewController: BaseXibViewController {
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.image = noNetworkPageImage
        }
    }
    @IBOutlet weak var descLabel: UILabel! {
        didSet {
            descLabel.text = visitorPageDesc
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        AccountServicer.service.goToLogin()
    }
}
