//
//  ViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit
import CoreData

@available(iOS 13.0, *)
class SettingsViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var setting = [SettingsInfo]()

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

    /*
     saves the trips using core data
     
     */
    func saveSettings() {
        do {
            try context.save()
        }
        catch {
            print("error saving settings \(error)")
        }
    }
    
    /*
     the read portion of CRUD
     
     */
    func loadSettings() {
        let request: NSFetchRequest<SettingsInfo> = SettingsInfo.fetchRequest()
        // when you execute a SQL SELECT statement, you usually filter the rows you want back in your query using a WHERE clause
        // to do this with core data, we use a "predicate" and attach it to our request
        // for categories, we want all rows in the category table, so we don't need to filter, but we will for items later...
        do {
            setting = try context.fetch(request)
        }
        catch {
            print("Error loading settings \(error)")
        }
    }

}

