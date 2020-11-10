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
        let t = TemplateViewController()
        addChild(t)
        view.addSubview(t.view)
    }


}

