//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Lizzie Kim on 2017-08-02.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cuteImages = [UIImage(named: "IMG_4179.JPG")!, UIImage(named: "IMG_4198.JPG")!, UIImage(named: "IMG_4317.JPG")!, ]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
        
    }
    
    @IBAction func toggleAction(_ sender:AnyObject){
        
        if imgView.isAnimating {
            
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        
        }
        else{
            
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }
        
    }
    
    @IBAction func changeSpeed(_ sender:AnyObject){
    
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedLabel.text = "\(speedSlider.value)"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

