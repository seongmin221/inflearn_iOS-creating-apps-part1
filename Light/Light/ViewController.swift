//
//  ViewController.swift
//  Light
//
//  Created by 이성민 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    func updateUI(){
        if lightOn{
            lightButton.setTitle("Lights On", for: .normal)
            view.backgroundColor = .white
        } else {
            lightButton.setTitle("Lights Off", for: .normal)
            view.backgroundColor = .black
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
}

