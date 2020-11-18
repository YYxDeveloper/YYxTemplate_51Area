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
    var templateFlowLayout:UICollectionViewFlowLayout{
        let flowLayout = UICollectionViewFlowLayout()
        
        return flowLayout
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IndicateCollectionVeiwCell", for: indexPath) as?  IndicateCollectionVeiwCell else {return UICollectionViewCell()}
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize()
    }
    
}
