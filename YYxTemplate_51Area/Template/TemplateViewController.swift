//
//  TemplateViewController.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/10.
//  Copyright © 2020 young. All rights reserved.
//

import UIKit

class TemplateViewController: UIViewController {

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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }
}
