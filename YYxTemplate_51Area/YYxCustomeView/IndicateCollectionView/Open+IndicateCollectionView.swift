//
//  Open+IndicateCollectionView.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/18.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension IndicateCollectionView{
    func refreshThisView(newCellSize:CGSize) {
        IndicateCollectionView.StateModel.cellSize = newCellSize
        collectionView.reloadData()
    }
    func exampleRefreshThisView() {
        let size = CGSize(width: 66, height: 88)
        refreshThisView(newCellSize: size)
    }
}
