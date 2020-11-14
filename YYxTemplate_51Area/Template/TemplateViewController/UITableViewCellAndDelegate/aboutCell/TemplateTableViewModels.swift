//
//  OddsBetListPickTableViewModels.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/14.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
extension TemplateTableViewCell{
    class ViewMemberModel{
        let model:MemberModel
        init(model:MemberModel) {
            self.model = model
        }
    }
    class ViewUserModel{
        
    }
}
// MARK: - Model
extension TemplateTableViewCell{
    struct MemberModel {
        let memberName:String
        let meberID:String
    }
    struct UserModel {
        let userName:String
        let userID:String
    }
}
