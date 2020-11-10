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
     所有VM創建都是VC(最上層)，sub custom view 也依賴VC的ViewModel或是寫一個adapter
     **/
    class TemplateIDSystemViewModel {
        
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
