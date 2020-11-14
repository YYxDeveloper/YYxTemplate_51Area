//
//  TemplateTableViewDelegate.swift
//  YYxTemplate_51Area
//
//  Created by 呂子揚 on 2020/11/13.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension TemplateViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OddsBetListPickTableViewCell") as? TemplateTableViewCell{
            guard  let viewModel = viewModel else {return cell}
            cell.updateViewModel(model: viewModel.bringEachtableViewCellDataModel(indexPath: indexPath))
            cell.refreshContentSubViews()
            return cell
        }else{
            let cell = TemplateTableViewCell()
            guard  let viewModel = viewModel else {return cell}
            cell.mountViewModel(model: viewModel.bringEachtableViewCellDataModel(indexPath: indexPath))
            cell.refreshContentSubViews()
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0.0
    }
    
}


