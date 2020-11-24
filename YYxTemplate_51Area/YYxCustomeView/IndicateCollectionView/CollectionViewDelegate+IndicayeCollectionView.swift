//
//  CollectionViewDelegate+IndicayeCollectionView.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/18.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension IndicateCollectionView:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
//    var templateFlowLayout:UICollectionViewFlowLayout{
//        let flowLayout = UICollectionViewFlowLayout()
//
//        return flowLayout
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //collectionView 沒有init看來要把layout網上擺
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IndicateCollectionVeiwCell", for: indexPath) as?  IndicateCollectionVeiwCell else {return UICollectionViewCell()}
        cell.refreshThisView(cellSize: IndicateCollectionView.StateModel.cellSize)
        
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize()
//    }
    
}
