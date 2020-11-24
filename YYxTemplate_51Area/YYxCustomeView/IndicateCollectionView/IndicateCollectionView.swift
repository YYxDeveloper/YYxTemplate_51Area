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
    
    private var stateModel:StateModel = StateModel()
     lazy var collectionView:UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.estimatedItemSize = IndicateCollectionView.StateModel.cellSize
        flowLayout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.delegate=self
        collectionView.dataSource=self
        collectionView.register(IndicateCollectionVeiwCell.self, forCellWithReuseIdentifier: "IndicateCollectionVeiwCell")
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false

        collectionView.backgroundColor = .gray
        
        return collectionView
    }()
    private lazy var indicateBar:UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        
        return view
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
            make.bottom.equalToSuperview().offset(-stateModel.barHeight)
            
        }
    }
    private func settingThisView() {
        backgroundColor = .green
    }
}
extension IndicateCollectionView{
    // View 之間有交互的數值
    struct StateModel {
        static var cellSize = CGSize(width: 40, height: 40)
        let barHeight = 10
    }
}
