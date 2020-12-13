//
//  AddDrinkViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit

class AddDrinkViewController: UIViewController {
    
    var healthStoreOptional: HealthStore? = nil

    
    @IBOutlet var saveDrinkButton: UIButton!
    
    @IBOutlet var HydatingDrink: UIImageView!
    
    @IBAction func waterButton(_ sender: UIButton) {
        var amount: String = ""
        
        let alert = UIAlertController(title: "Enter how much water you drank in fluid onces.", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter water amount."
        }
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (_) in
            if let alertText = alert.textFields, let first = alertText.first, let text = first.text{
            amount = text
            }
        }))
        self.present(alert, animated: true)
        
        if (amount != "") {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
