//
//  ViewController.swift
//  MiraclePills
//
//  Created by Taimoor Saeed  on 05/11/2016.
//  Copyright © 2016 Taimoor Saeed . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryFeild: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipFeild: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Alaska","Arkansas","Alabama","Calafornia","Maine", "NewYork"]
    
    override func viewDidLoad() {
        statePicker.dataSource = self
        statePicker.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryFeild.isHidden = true
        zipLabel.isHidden = true
        zipFeild.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
 func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBtn.setTitle(states[row], for:UIControlState())
    statePicker.isHidden = true
    countryLabel.isHidden = false
    countryFeild.isHidden = false
    zipLabel.isHidden = false
    zipFeild.isHidden = false
}
    @IBAction func sucessbtnpressed(_ sender: AnyObject) {
    }
}



