//
//  ViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    
    
    @IBAction func saveButton (_ sender: UIButton) {
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let (age, _) = Settings.getAge()
        let (weight, _) = Settings.getWeight()
        let (height, _) = Settings.getHeight()
        nameTextField.text = Settings.getName()
        heightTextField.text = height
        weightTextField.text = weight
        ageTextField.text = age
        
    }


}

