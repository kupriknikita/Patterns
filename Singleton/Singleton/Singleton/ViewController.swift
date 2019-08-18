//
//  ViewController.swift
//  Singleton
//
//  Created by Nikita Kuprik on 8/19/19.
//  Copyright © 2019 Nikita Kuprik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        print(safe.money)
    }

}

