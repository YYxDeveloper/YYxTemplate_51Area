//
//  Open+TemplateSubView.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/18.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension TemplateViewController.TemplateSubView{
    func refreshSubViews() {
        guard let commadDelegate = commadDelegate else {return}
        commadDelegate.callCommand1()
    }
}




