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

    @IBAction func stateButtonPressed(sender: AnyObject) {
        statePicker.hidden = false
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
 func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBtn.setTitle(states[row], forState:UIControlState())
    statePicker.hidden = true
}
}



