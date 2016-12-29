//
//  ViewController.swift
//  GreatAccountLol
//
//  Created by NguyenHung on 12/28/16.
//  Copyright © 2016 NguyenHung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["NA LCS", "EU LCS", "LCK", "LPL", "LMS"]
    let teamNa = ["Cloud9", "TSM", "Immortal", "Echo Fox", "Counter Logic Gaming", "Team Envy", "NRG Esports", "Liquid", "Apex"]
    let teamEu = ["Origen", "G2 Esport", "H2K", "ROCCAT", "Fnatic", "Giants", "Unicom of Love", "Splyce", "FC Schalke 04"]
    let teamLck = ["CJ ENTUS", "Samsung Galaxy", "ROX Tigers", "KT Rolster", "SK Telecom T1", "MVP", "ESC Ever"]
    let teamLpl = ["Edward Gaming", "NewBee", "Snake Esports", "Royal Never Give Up", "LGD Gaming", "I May", "OMG", "Vici Gaming"]
    let teamLms = ["J Team", "Machi", "Flash Wolves", "ahq e-Sports Club", "Hong Kong Esports", "Team Mist", "Mid Night Sun"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
    }
    
}

