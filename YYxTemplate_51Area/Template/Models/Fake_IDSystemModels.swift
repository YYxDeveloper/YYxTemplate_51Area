//
//  Fake_IDSystemModels.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/13.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
extension Fake_IDSystemModelManger{
    struct DataModel {
        let name:String
        let AreaCode:String
        let numberCode:Int
        lazy var idCode:String = {
            return AreaCode + String(numberCode)
        }()
        
    }
}
