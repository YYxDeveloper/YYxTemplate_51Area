//
//  TemplateViewController.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/10.
//  Copyright © 2020 young. All rights reserved.
//

import UIKit
/**
 1. 屬性，生命週期，方法，用extension分開
 2. view & model 屬性用MARK separate
 3. 基本架構：
 ViewModels -> ModelManger -> Model
 4.每個階層用資料夾區隔
 */
class TemplateViewController: UIViewController {
    
     var viewModel:TemplateSubViewIDSystemModel?
     var templateAccountViewModel:TemplateAccountViewModel?
    
    // MARK: - SubViews
    lazy var tableView:UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(gray: 244)
        //           tableView.delegate = self
        //           tableView.dataSource = self
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        
        return tableView
    }()
    lazy var collectionView:UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect(), collectionViewLayout:YJCollectionViewHorizontalLineLayout())
        
        collectionView.delegate=self
        collectionView.dataSource=self
//        collectionView.register(AnyComplexUnitViewCollectionViewCell.self, forCellWithReuseIdentifier: "AnyComplexUnitViewCollectionViewCell")
        collectionView.contentInset = UIEdgeInsets(top: 5, left: 10, bottom: 0, right: 10)
        
        return collectionView
    }()
}
extension TemplateViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        regulateThisView()
    }
}
extension TemplateViewController{
    private func regulateThisView() {
        settingThisView()
        addThisSubViews()
        layoutThisSubViews()
    }
    
    private func addThisSubViews() {
        
    }
    
    private func layoutThisSubViews() {
        
    }
    
    private func settingThisView() {
        
    }
    
    
}
