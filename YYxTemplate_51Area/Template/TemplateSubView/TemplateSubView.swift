//
//  TemplateView.swift
//  YYxProvingGround
//
//  Created by Young Lu on 2020/9/2.
//  Copyright © 2020 002. All rights reserved.
//

import Foundation
import UIKit
protocol YYxSubViewInformalPrinciple {
    func regulateThisView()
    func addThisSubViews()
    func layoutThisSubViews()
    func settingThisView()
    func refreshThisView()
}
protocol TemplateSubViewCommandProtocol {
    func callCommand1()
}

extension TemplateViewController{
    class TemplateSubView: UIView {
        //        var viewModel:YYxTemplateViewModel?
        var commadDelegate:TemplateSubViewCommandProtocol?
        override init(frame: CGRect) {
            super.init(frame: frame)
            regulateThisView()
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func refreshSubViews() {
            guard let commadDelegate = commadDelegate else {return}
            commadDelegate.callCommand1()
        }
        
    }
}
extension TemplateViewController{
    class TemplateViewModel {
        
    }
}
extension TemplateViewController.TemplateViewModel:TemplateSubViewCommandProtocol{
    func callCommand1() {
        print("view傳過來的互動指令")
    }
}
