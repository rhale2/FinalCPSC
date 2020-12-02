//
//  ViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit

class SettingsViewController: UIViewController {
    var settingsOptional: Settings? = nil
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var name: UITextField!
    
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet var heightNum: UITextField!
    
    @IBOutlet var weightNum: UITextField!
    
    @IBOutlet var ageTextField: UITextField!
    
    
    @IBAction func saveButton (_ sender: UIButton) {
        // save
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let settings = settingsOptional {
            heightNum.text = settings.getHeight()
            name.text = settings.getName()
            weightNum.text = settings.getWeight()
            ageTextField.text = settings.getAge()
        }
        
    }


}

