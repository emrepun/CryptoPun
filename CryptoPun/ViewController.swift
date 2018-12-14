//
//  ViewController.swift
//  CryptoPun
//
//  Created by Emre HAVAN on 14.12.2018.
//  Copyright © 2018 Emre HAVAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let testMsg = "fnsf ibwbo"
        var key = 1
        let encrypted = CaesarCipher.shared.decrypt(message: testMsg, key: &key)
        print(encrypted)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

