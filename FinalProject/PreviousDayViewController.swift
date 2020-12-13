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
        if (isInfoShown == nil || isInfoShown == "")
        {
            UserDefaults.standard.setValue("ShownInfo", forKey: "Info")
            let birtday = getBirthday()
            let weight = getWeight()
            let name = getName()
          
            if let set = settings {
                set.setAge(age: birtday)
                set.setName(name: name)
                set.setWeight(weight: weight)
            }
        }
        let alertShown = UserDefaults.standard.bool(forKey: "ShownAlert")
        if !alertShown {
            print("1st time launch, showing info Alert.")
            UserDefaults.standard.set(true, forKey: "ShownAlert")
        }
    }
    
    func getBirthday () -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let _ = Date()
        var birthday: String = ""
        let birthdayAlert = UIAlertController(title: "Enter your birthday to claculate how much water you need to drink.", message: nil, preferredStyle: .alert)
        birthdayAlert.addTextField { (textField) in
            textField.placeholder = "Enter your birthday MM/DD/YYYY."
        }
        birthdayAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = birthdayAlert.textFields, let first = alertText.first, let text = first.text {
                birthday = text
            }
        }))
        self.present(birthdayAlert, animated: true)
        
        guard let age = dateFormatter.date(from: birthday) else {
            return Date()
        }
        return age
    }
    
    func getWeight () -> Double {
        var weight: String = ""
        
        let weightAlert = UIAlertController(title: "Enter your weight to claculate how much water you need to drink.", message: nil, preferredStyle: .alert)
        weightAlert.addTextField { (textField) in
            textField.placeholder = "Enter your weight."
        }
        weightAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = weightAlert.textFields, let first = alertText.first, let text = first.text {
                weight = text
            }
        }))
        self.present(weightAlert, animated: true)
        
        guard let weightDouble = Double(weight) else {
            return 0.0
        }
        return weightDouble
    }
    
    func getName () -> String {
        var name: String = ""
        
        let nameAlert = UIAlertController(title: "Enter your name.", message: nil, preferredStyle: .alert)
        nameAlert.addTextField { (textField) in
            textField.placeholder = "Enter your name."
        }
        nameAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = nameAlert.textFields, let first = alertText.first, let text = first.text {
                name = text
            }
        }))
        self.present(nameAlert, animated: true)
        return name
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
