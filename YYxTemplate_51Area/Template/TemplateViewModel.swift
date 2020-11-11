//
//  TemplateViewModel.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/10.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation

extension TemplateViewController{
    /*
     1.所有VM創建都是VC(最上層)，sub custom view 也依賴VC的ViewModel或是寫一個adapter
     2.viewModel 命名原則 custom class name + functionalModelName
     **/
    class TemplateSubViewIDSystemModel {
        let iDSystemModelManger = Fake_IDSystemModelManger()
        
    }
    class TemplateAccountViewModel {
        //private model, didSet{}用於內部
        
        //notifications
        
        /*input functions
         一個view的輸入開一個函式輸入參數，這樣可以藉著函數來filter
         **/
        func getModel() -> String{
            return "回傳Model，雖然會破壞內聚性但還是有可能需要"
        }
        
    }
}

/**
 1. 不要直接訪望屬性，不然一多很難找，單一進出原則
 2. open property  in extra extension block
 */
class Fake_IDSystemModelManger {
    private var dataModels:[DataModel]
    
    init() {
        dataModels = Fake_IDSystemModelManger.requestData()
    }
    private static func requestData() -> [DataModel] {
        return  [DataModel(name: "呂楊", AreaCode: "F", numberCode: 117148498)]
    }
    
}
extension Fake_IDSystemModelManger{
    var howManyPeople:Int{return dataModels.count}
    func pickNewestData() -> [DataModel] {
        return dataModels
    }
    func updateData(newestData:[DataModel]) {
        dataModels = newestData
    }
}
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
