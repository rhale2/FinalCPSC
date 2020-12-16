//
//  WaterLogViewController.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import UIKit
import HealthKit

class WaterLogViewController: UIViewController {
    var settings = Settings()
    var disclaimerHasBeenDisplayed = false
    private var healthStore: HealthStore?

    
    @IBOutlet var hydrationLabelLabel: UILabel!
    
    @IBOutlet var giphImage: UIImageView!
    
    @IBAction func addDrink (_ sender: UIButton) {
        // addDrink
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let documentsDirectoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        print(documentsDirectoryURL)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        healthStore = HealthStore()
        
        if let healthStore = healthStore {
            healthStore.requestCaffeineAuthorization { (success) in
                
            }
            healthStore.requestWaterAuthorization { (success) in
                
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "SettingsSegue" {
                
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
