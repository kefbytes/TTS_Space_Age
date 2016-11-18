//
//  ViewController.swift
//  Space_Age
//
//  Created by Franks, Kent on 10/31/16.
//  Copyright © 2016 Franks, Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var showHideButton: UIButton!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var calculationLabel: UILabel!
    @IBOutlet weak var ageInput: UITextField!
    let earthYearInSeconds: Float = 31557600.00
    let planets = PlanetCollection()
    var selectedPlanet = Planet(name: "Earth", orbitalRatio: 1.0, demonym: "Earth")

    override func viewDidLoad() {
        super.viewDidLoad()
        showHideButton.setTitle("Hide", for: UIControlState.normal)
        picker.isHidden = true
        calculationLabel.isHidden = true
    }

    // MARK: - Actions
    @IBAction func showCalculation(_ sender: AnyObject) {
        if let age = ageInput.text {
            if age != "" {
                let ageInSecs = ageToSeconds(ageInYears: Int(age)!)
                let planetAge = selectedPlanet.ageToPlanetYears(ageInEarthSeconds: ageInSecs)
                calculationLabel.text = "You are \(planetAge) in \(selectedPlanet.demonym) years!"
            } else {
                calculationLabel.text = "Please enter an Age!"
            }
        }
        calculationLabel.isHidden = false


    }
    
    @IBAction func showHideAction(_ sender: Any) {
        if picker.isHidden {
            showHideButton.setTitle("Hide", for: UIControlState.normal)
            picker.isHidden = false
        } else {
            showHideButton.setTitle("Show", for: UIControlState.normal)
            picker.isHidden = true
        }
    }
    
    // MARK: Calculations
    func ageToSeconds(ageInYears: Int) -> Float {
        return Float(ageInYears) * earthYearInSeconds
    }
    
    // MARK: - Picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return planets.milkyWay.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPlanet = planets.milkyWay[row]
        ageInput.resignFirstResponder()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return planets.milkyWay[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = planets.milkyWay[row].name
        return NSAttributedString(string: titleData, attributes: [NSForegroundColorAttributeName:UIColor.white])
    }
    
    
    // MARK: TextField
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        picker.isHidden = false
    }
    
    
}

