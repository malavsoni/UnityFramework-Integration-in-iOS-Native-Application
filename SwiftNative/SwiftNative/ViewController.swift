//
//  ViewController.swift
//  SwiftNative
//
//  Created by Malav Soni on 23/07/19.
//  Copyright © 2019 Malav Soni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnClicked(_ sender: Any) {
        (UIApplication.shared.delegate as! AppDelegate).initAndShowUnity()
    }
}

