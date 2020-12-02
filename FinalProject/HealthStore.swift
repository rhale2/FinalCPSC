//
//  HealthStore.swift
//  FinalProject
//
//  Created by Rebekah Hale on 12/2/20.
//

import Foundation
import HealthKit

class HealthStore {
    var healthStore: HKHealthStore?
    
    init () {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }
    
    
    
    func requestWaterAuthorization (completion: @escaping (Bool) -> Void) {
        let waterIntake = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryWater)!
        
        guard let healthStore = self.healthStore else {
            return completion(false)
        }
        
        healthStore.requestAuthorization(toShare: [waterIntake], read: [waterIntake]) { (success, error) in
            completion(success)
        }
    }
    
    func requestCaffeineAuthorization (completion: @escaping (Bool) -> Void) {
        let caffineIntake = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryCaffeine)!
        
        guard let healthStore = self.healthStore else {
            return completion(false)
        }
        
        healthStore.requestAuthorization(toShare: [caffineIntake], read: [caffineIntake]) { (success, error) in
            completion(success)
        }
        
    }
    
    //func addWater (completion: @escaping (HKS))
}

