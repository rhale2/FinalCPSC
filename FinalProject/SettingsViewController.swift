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
        let (name, age, height, weight) = Settings.readFromFile()
        nameTextField.text = name
        heightTextField.text = height
        weightTextField.text = weight
        ageTextField.text = age
        
    }


}

