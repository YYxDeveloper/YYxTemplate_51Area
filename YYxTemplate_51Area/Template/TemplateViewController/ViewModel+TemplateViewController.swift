//
//  TemplateViewModel.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/10.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
extension TemplateViewController{
    class TemplateViewModel {
        
    }
}
extension TemplateViewController{
    /*
     1.所有VM創建都是VC(最上層)，sub custom view 也依賴VC的ViewModel或是寫一個adapter
     2.viewModel 命名原則 custom class name + functionalModelName
     **/
    class TemplateSubViewIDSystemModel {
        let iDSystemModelManger = Fake_IDSystemModelShepherd()
        
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
extension TemplateViewController.TemplateSubViewIDSystemModel{
    func bringEachtableViewCellDataModel(indexPath:IndexPath) -> TemplateTableViewCell.MemberModel {
        
        var each = iDSystemModelManger.bringNewestData()[indexPath.row]
        
        return TemplateTableViewCell.MemberModel(memberName: each.name, meberID: each.idCode)
    }
}
extension TemplateViewController.TemplateAccountViewModel{
    
}
extension TemplateViewController.TemplateViewModel:TemplateSubViewCommandProtocol{
    func callCommand1() {
        print("view傳過來的互動指令")
    }
}
