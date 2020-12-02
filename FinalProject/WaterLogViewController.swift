//
//  WaterLogViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit

class WaterLogViewController: UIViewController {
    var settings = Settings()
    var disclaimerHasBeenDisplayed = false
    
    @IBOutlet var hydrationLabelLabel: UILabel!
    
    @IBOutlet var giphImage: UIImageView!
    
    @IBAction func addDrink (_ sender: UIButton) {
        // addDrink
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let _ = Date()
        var birthday: String = ""
        var weight: String = ""
        var name: String = ""
        
        if disclaimerHasBeenDisplayed == false {
            disclaimerHasBeenDisplayed = true
            
            let alert = UIAlertController(title: "Enter your birthday to claculate how much water you need to drink.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter your birthday MM/DD/YYYY."
            }
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
                if let alertText = alert.textFields, let first = alertText.first, let text = first.text {
                birthday = text
                    print(birthday)
                }
            }))
            self.present(alert, animated: true)
            
            if (birthday != "") {
                let alert = UIAlertController(title: "Enter your name.", message: nil, preferredStyle: .alert)
                alert.addTextField { (textField) in
                    textField.placeholder = "Enter your name."
                }
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
                    if let alertText = alert.textFields, let first = alertText.first, let text = first.text {
                    name = text
                    }
                }))
                self.present(alert, animated: true)
                
                if (weight != "") {
                    let alert = UIAlertController(title: "Enter your weight to claculate how much water you need to drink.", message: nil, preferredStyle: .alert)
                    alert.addTextField { (textField) in
                        textField.placeholder = "Enter your weight."
                    }
                    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
                        if let alertText = alert.textFields, let first = alertText.first, let text = first.text {
                        weight = text
                        }
                    }))
                    self.present(alert, animated: true)
                }

                if let weightDouble = Double(weight), let age = dateFormatter.date(from: birthday) {
                    settings.setAge(age: age)
                    settings.setName(name: name)
                    settings.setWeight(weight: weightDouble)
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "SettingsSegue" {
                if let settingsVC = segue.destination as? SettingsViewController {
                    settingsVC.settingsOptional = settings
                }
            }
            else if identifier == "AddDrinkSegue" {
                
            }
            else if identifier == "PreviousDaySegue" {
                
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
