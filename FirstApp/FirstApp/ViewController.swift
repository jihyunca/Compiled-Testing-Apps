//
//  ViewController.swift
//  FirstApp
//
//  Created by Lizzie Kim on 2017-07-24.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = "Hi"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFact()
    {
       funFactLabel.text = "You pressed me!"
    
    }
}

