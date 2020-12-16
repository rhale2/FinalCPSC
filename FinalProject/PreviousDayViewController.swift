//
//  PreviousDayViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit

class PreviousDayViewController: UIViewController {
    var settings: Settings? = nil
    
    @IBOutlet var hydrationLevelLabel: UILabel!
    @IBOutlet var previousDayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let isInfoShown = UserDefaults.standard.string(forKey: "Info")
        if (isInfoShown == nil || isInfoShown == "") {
            UserDefaults.standard.setValue("ShownInfo", forKey: "Info")
            getAlerts()
        }
        let alertShown = UserDefaults.standard.bool(forKey: "ShownAlert")
        if !alertShown {
            print("1st time launch, showing info Alert.")
            UserDefaults.standard.set(true, forKey: "ShownAlert")
        }
    }
   
    func getAlerts () {
        let nameAlert = UIAlertController(title: "Enter your name.", message: nil, preferredStyle: .alert)
        nameAlert.addTextField { (textField) in
            textField.placeholder = "Enter your name."
        }
        nameAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = nameAlert.textFields, let first = alertText.first, let text = first.text {
                Settings.setName(name: text)
                
                let birthdayAlert = UIAlertController(title: "Enter your birthday to claculate how much water you need to drink.", message: nil, preferredStyle: .alert)
                birthdayAlert.addTextField (configurationHandler: { textField in
                    textField.placeholder = "Enter a Start Date MM/DD/YYYY"
                })
                birthdayAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
                    let text = birthdayAlert.textFields?.first?.text
                    Settings.setAge(birthday: text)
                    
                    let heightAlert = UIAlertController(title: "Enter your height.", message: nil, preferredStyle: .alert)
                    heightAlert.addTextField { (textField) in
                        textField.placeholder = "Enter your height."
                    }
                    heightAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
                        if let alertText = heightAlert.textFields, let first = alertText.first, let text = first.text {
                            Settings.setHeight(height: text)
                            
                            let weightAlert = UIAlertController(title: "Enter your weight to claculate how much water you need to drink.", message: nil, preferredStyle: .alert)
                            weightAlert.addTextField { (textField) in
                                textField.placeholder = "Enter your weight."
                            }
                            weightAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
                                if let alertText = weightAlert.textFields, let first = alertText.first, let text = first.text {
                                    Settings.setWeight(weight: text)
                                    Settings.createAndWriteToFile()
                                }
                            }))
                            self.present(weightAlert, animated: true)
                        }
                    }))
                    self.present(heightAlert, animated: true)
                }))
                self.present(birthdayAlert, animated: true)
            }
        }))
        self.present(nameAlert, animated: true)
    }
}



