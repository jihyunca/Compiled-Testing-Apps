//
//  ViewController.swift
//  Testerrrrr
//
//  Created by Lizzie Kim on 2017-07-25.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var funFactLabel: UILabel!
    
    let factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        
        
        funFactLabel.text = factProvider.randomFact()
    }

}

