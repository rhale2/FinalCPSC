//
//  Drinks.swift
//  FinalProject
//
//  Created by Rebekah Hale on 11/30/20.
//

// DRINKS:
/*
 coffee
 - decaf or not
 - ammount of shots
 - ammount of liquid
 water
 - ammount
 tea
 - decaf or not
 - ammount of shots
 - ammount of liquid
 alcohol
 - wine
 - - ammount
 - beer
 - - ammount
 - cockatails = 40%
 - - ammount
 - other
  - - ammount
 juice
 - ammount
 soda
 - caffinated
 - diet - regular - sugar free
 - ammount
 milk
 - ammount
 energy drink
 - ammount
 sport drink
 - ammount
 */

import Foundation

class Drinks {
    var type: String
    var amount: Double
    var date: Date
    var time: Date
    
    init (type: String, amount: Double, date: Date, time: Date ) {
        self.type = type
        self.amount = amount
        self.date = date
        self.time = time
    }
    
    if HKHealthStore.isHealthDataAvailable() {
        // Add code to use HealthKit here.
    }
}
