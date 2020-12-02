//
//  Settings.swift
//  FinalProject
//
//  Created by Rebekah Hale on 12/2/20.
//

import Foundation

class Settings {
    private var birthday: Date
    private var weight: Double
    private var height: Double
    private var name: String
    
    init () {
        self.birthday = Date()
        self.weight = 0.0
        self.height = 0.0
        self.name = ""
    }
    
    func setAge (age: Date) {
        self.birthday = age
    }
    
    func setWeight (weight: Double) {
        self.weight = weight
    }
    
    func setHeight (height: Double) {
        self.height = height
    }
    
    func setName (name: String) {
        self.name = name
    }
    
    func getAge () -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let today = Date()
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthday, to: today)
        let age = ageComponents.year!
        return String(age)
    }
    
    func getWeight () -> String {
        return String(self.weight)
    }
    
    func getHeight () -> String {
        return String(self.height)
    }
    
    func getName () -> String {
        return self.name
    }
    
    
}
