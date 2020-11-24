//
//  ViewController.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/5.
//  Copyright © 2020 young. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let t = TemplateViewController()
//        addChild(t)
//        view.addSubview(t.view)
        let indicateCollectionView = IndicateCollectionView()

        view.addSubview(indicateCollectionView)
        
        indicateCollectionView.snp.makeConstraints({make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        })
//        let size = CGSize(width: 66, height: 88)
//
//        indicateCollectionView.refreshThisView(newCellSize: size)
        
        view.backgroundColor = .red
    }


}

