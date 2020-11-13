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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0.0
    }
    
}


