//
//  IndicateCollectionView.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/18.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class IndicateCollectionView: UIView {
    private lazy var collectionView:UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.delegate=self
        collectionView.dataSource=self
        collectionView.register(IndicateCollectionVeiwCell.self, forCellWithReuseIdentifier: "IndicateCollectionVeiwCell")
        collectionView.contentInset = UIEdgeInsets(top: 5, left: 10, bottom: 0, right: 10)
        collectionView.backgroundColor = .gray
        return collectionView
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
        addSubview(collectionView)
    }
    private func layoutThisSubViews() {
        collectionView.snp.makeConstraints{make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(40)
            
        }
    }
    private func settingThisView() {
        backgroundColor = .green
    }
}
