//
//  ViewController.swift
//  MiniBrowser
//
//  Created by Lizzie Kim on 2017-08-17.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bookMarkSegmented: UISegmentedControl!
    
    @IBOutlet weak var urlTextField: UITextField!
    
    @IBOutlet weak var mainWebView: UIWebView!
    
    @IBAction func bookMarkAction(_ sender: AnyObject) {
        
        let bookMarkUrl = bookMarkSegmented.titleForSegment(at: bookMarkSegmented.selectedSegmentIndex)
        let urlString = "http://www.\(bookMarkUrl!).com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
       urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let urlString = "\(urlTextField.text!)"
        
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        
        return true
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    
        let urlString = "http://www.facebook.com"
        
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

