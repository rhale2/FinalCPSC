//
//  CaffeinatedDrinks.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

import Foundation

class DehydratingDrinks: Drinks {
    var caffeinated: Bool = false
    var caffeinePercentage: Double
    
    init (caffeinated: Bool, caffeinePercentage: Double, type: String, amount: Double, date: Date, time: Date) {
        self.caffeinated = caffeinated
        self.caffeinePercentage = caffeinePercentage
        super.init(type: type, amount: amount, date: date, time: date)
    }
    
    func decreaseWaterLevel (currentWaterLevel: Double, decreasedWaterAmount: Double) {
        
    }
    
}
