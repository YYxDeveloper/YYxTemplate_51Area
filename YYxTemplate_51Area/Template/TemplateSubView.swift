//
//  TemplateView.swift
//  YYxProvingGround
//
//  Created by Young Lu on 2020/9/2.
//  Copyright © 2020 002. All rights reserved.
//

import Foundation
import UIKit
 protocol YYxSubViewPrinciple {
    func addSubViews()
    func layoutSubViews()
    func settingThisView()
}
 protocol TemplateSubViewCommandProtocol {
    func callCommand1()
}
extension TemplateViewController{
    class TemplateSubView: UIView,YYxSubViewPrinciple {
        //        var viewModel:YYxTemplateViewModel?
        var commadDelegate:TemplateSubViewCommandProtocol?
        override init(frame: CGRect) {
            super.init(frame: frame)
            settingThisView()
            addSubViews()
            layoutSubViews()
        }
        func addSubViews(){
            
        }
        func layoutSubViews(){
            
        }
        func settingThisView(){
            
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



extension TemplateViewController.TemplateSubView{
    func gg()  {
    }
}
