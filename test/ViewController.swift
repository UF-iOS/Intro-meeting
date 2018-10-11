//
//  ViewController.swift
//  test
//
//  Created by Siddha Tiwari on 10/11/18.
//  Copyright © 2018 Siddha Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
        var width = view.widthAnchor
        
    }
    
    var n = 0

    @objc func handleButtonTap() {
        var color = UIColor.blue
        if n == 0 {
            color = UIColor.red
        } else if n == 1 {
            color = UIColor.yellow
        }
        view.backgroundColor = color
        n = n + 1
        
        rect.frame.size = CGSize(width: 10, height: 10)
    }
    
    @IBOutlet weak var rect: UIView!
    
    @IBOutlet weak var button: UIButton!
}

