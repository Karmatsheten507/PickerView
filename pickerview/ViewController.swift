//
//  ViewController.swift
//  pickerview
//
//  Created by Nando Septian Husni on 5/22/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    
    var data = ["a","ab","bn"]

    @IBOutlet weak var input1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        input1.text = data[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

