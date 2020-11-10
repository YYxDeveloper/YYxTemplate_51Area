//
//  TemplateView.swift
//  YYxProvingGround
//
//  Created by Young Lu on 2020/9/2.
//  Copyright © 2020 002. All rights reserved.
//

import Foundation
import UIKit
extension TemplateViewController{
    class TemplateView: UIView {
        var viewModel:YYxTemplateViewModel?
        override init(frame: CGRect) {
            super.init(frame: frame)
            settingThisView()
            addSubViews()
            layoutSubViews()
        }
        private func addSubViews(){
            
        }
        private func layoutSubViews(){
            
        }
        private func settingThisView(){
            
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func refreshSubViews() {
            guard let viewModel = viewModel else {return}
        }
    }
}
extension TemplateViewController.TemplateView{
       class YYxTemplateViewModel {
           
       }
   }
