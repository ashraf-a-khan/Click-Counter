//
//  ViewController.swift
//  Click Counter
//
//  Created by Ashraf Khan on 1/2/20.
//  Copyright © 2020 Ashraf Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // label1
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 75, y: 250, width: 120, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        // button
        let button2 = UIButton()
        button2.frame = CGRect(x: 200, y: 250, width: 120, height: 60)
        button2.setTitle("Decrement", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button2)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }

    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
}

