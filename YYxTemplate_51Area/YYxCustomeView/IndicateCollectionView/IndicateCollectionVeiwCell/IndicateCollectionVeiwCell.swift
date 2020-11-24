//
//  IndicateCollectionVeiwCell.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/18.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit

class IndicateCollectionVeiwCell: UICollectionViewCell {
    let label:UILabel = {
        let label = UILabel()
        label.text = "aa"
        label.textAlignment = .center
        label.backgroundColor = .orange
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        regulateThisView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func regulateThisView() {
        addThisSubViews()
        layoutThisSubViews()
        settingThisView()
    }
    private func addThisSubViews() {
        contentView.addSubview(label)
    }
    private func layoutThisSubViews() {
        label.snp.makeConstraints({make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(IndicateCollectionView.StateModel.cellSize.height)
            make.width.equalTo(IndicateCollectionView.StateModel.cellSize.width)
        })
      
    }
    private func settingThisView() {
        contentView.backgroundColor = .cyan
    }
    
   
    
    
}

