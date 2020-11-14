//
//  TemplateTableViewCell.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/14.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
protocol YYxTableViewCellContentViewInformalPrinciple {
    func regulateContentView()
}
class TemplateTableViewCell: UITableViewCell{
    var viewModel:ViewMemberModel?
    var viewUserModel:ViewUserModel?

    init() {
        super.init(style: .default, reuseIdentifier: "TemplateTableViewCell")
       regulateContentView()
    } 
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Open function
extension TemplateTableViewCell{
    /**
        可能還有一些初始設定，像是tag
     */
    func mountViewModel(model:MemberModel) {
        viewModel = ViewMemberModel(model: model)
    }
    func updateViewModel(model:MemberModel) {
        viewModel = ViewMemberModel(model: model)
    }
}
