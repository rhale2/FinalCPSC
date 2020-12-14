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
    
    @IBAction func milkButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much milk you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter milk amount."
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
        
        @IBAction func juiceButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much juice you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter juice amount."
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
        
        @IBAction func sodaButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much soda you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter soda amount."
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
        
        @IBAction func coffeeButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much coffee you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter coffee amount."
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
        
        @IBAction func teaButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much tea you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter tea amount."
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
        
        @IBAction func energyDrinkButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much drank of an energy drink in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter energy drink amount."
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
        
        @IBAction func sportsDrinkButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much drank of a sports drink in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter sports drink amount."
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
        
        @IBAction func cocktailButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much cocktail you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter cocktail amount."
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
        
        @IBAction func wineButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much wine you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter wine amount."
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
        
        @IBAction func beerButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much beer you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter beer amount."
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
        
        @IBAction func otherDrinkButton(_ sender: UIButton) {
            var amount: String = ""
            
            let alert = UIAlertController(title: "Enter how much you drank in fluid onces.", message: nil, preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.placeholder = "Enter drink amount."
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
