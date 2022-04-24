//
//  ViewController.swift
//  IBBasic
//
//  Created by 이성민 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.setTitleColor(.red, for: .normal)
    }

    
    
}

