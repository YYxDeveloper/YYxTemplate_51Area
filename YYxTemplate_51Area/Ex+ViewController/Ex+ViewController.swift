//
//  Ex+ViewController.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/24.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension ViewController{
    func example_IndicateCollectionView() {
        let indicateCollectionView = IndicateCollectionView()
        view.addSubview(indicateCollectionView)
        
        indicateCollectionView.snp.makeConstraints({make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(55)
        })
//        indicateCollectionView.exampleRefreshThisView()
    }
}
