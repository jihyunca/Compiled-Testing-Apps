//
//  ViewController.swift
//  SelectCar
//
//  Created by Lizzie Kim on 2017-08-24.
//  Copyright © 2017 Lizzie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var imgView: UIImageView!
    
    let carCompanyName = ["Tesla", "Lamborghini", "Porsche"]
    
    var carModel:[String] = []
    var carModelImages:[String] = []
    
    let teslaImages = ["tesla-model-s.jpg", "tesla-model-x.jpg"]
    let lamborghiniImages = ["lamborghini-veneno.jpg", "lamborghini-huracan.jpg", "lamborghini-aventador.jpg"]
    let porscheImages = ["porsche-911.jpg", "porsche-boxter.jpg"]
    
    let tesla = ["Model S", "Model X"]
    
    let lamborghini = ["Veneno", "Huracan", "Aventador"]
    
    let porsche = ["911", "Boxter"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carModel = tesla
        carModelImages = teslaImages
        
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }
    
    //UI PICKER VIEW DATA SOURCE
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return carCompanyName.count
        }
        else {
            return carModel.count
        }
    }
    
    //UI PICKER VIEW DELEGATE
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if component == 0 {
            return carCompanyName[row]
        }
        else {
            return carModel[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImages = teslaImages
        }
        else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImages = lamborghiniImages
        }
        else if component == 0 && row == 2 {
            carModel = porsche
            carModelImages = porscheImages
        }
        
        pickerView.reloadAllComponents()
        
        imgView.image = UIImage(named: carModelImages[pickerView.selectedRow(inComponent: 1)])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
}







