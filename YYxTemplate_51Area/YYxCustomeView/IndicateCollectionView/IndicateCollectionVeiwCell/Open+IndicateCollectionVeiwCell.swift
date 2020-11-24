//
//  Open+IndicateCollectionVeiwCell.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/18.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit

extension IndicateCollectionVeiwCell{
    func refreshThisView(cellSize:CGSize) {
        label.snp.remakeConstraints({make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(cellSize.height)
            make.width.equalTo(cellSize.width)

        })
    }
}

