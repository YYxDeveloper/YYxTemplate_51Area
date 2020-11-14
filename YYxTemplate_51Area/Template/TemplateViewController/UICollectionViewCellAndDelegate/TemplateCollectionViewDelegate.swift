//
//  TemplateCollectionViewDelegate.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/13.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension TemplateViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    var templateFlowLayout:UICollectionViewFlowLayout{
        let flowLayout = UICollectionViewFlowLayout()
        
        return flowLayout
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize()
    }
    
}
