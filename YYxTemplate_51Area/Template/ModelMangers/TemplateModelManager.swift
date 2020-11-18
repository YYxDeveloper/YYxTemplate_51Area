//
//  TemplateModelManager.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/13.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation

/**
 1. 不要直接訪望屬性，不然一多很難找，單一進出原則
 2. open property  in extra extension block
 */
class Fake_IDSystemModelShepherd {
    private var dataModels:[MemberIDDataModel]
    
    init() {
        dataModels = Fake_IDSystemModelShepherd.requestData()
    }
    private static func requestData() -> [MemberIDDataModel] {
        return  [MemberIDDataModel(name: "呂楊", AreaCode: "F", numberCode: 117148498)]
    }
    
}
extension Fake_IDSystemModelShepherd{
    var howManyPeople:Int{return dataModels.count}
    func bringNewestData() -> [MemberIDDataModel] {
        return dataModels
    }
    func updateData(newestData:[MemberIDDataModel]) {
        dataModels = newestData
    }
}
