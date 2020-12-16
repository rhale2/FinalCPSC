//
//  Settings.swift
//  FinalProject
//
//  Created by Rebekah Hale on 12/2/20.
//

import Foundation

struct Settings {
    static private var age: Date = Date()
    static private var weight: Double = 0.0
    static private var height: Double = 0.0
    static private var name: String = ""
    static var fileURL: URL = URL.init(fileURLWithPath: "Documents")
    
    static func setName (name: String?) {
        if let userName = name {
            self.name = userName
        }
    }
    
    static func setAge (birthday: String?) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let _ = Date()
        
        if let birthdate = birthday {
            let date = dateFormatter.date(from: birthdate)
            if let day = date {
                self.age = day
            }
        }
    }
    
    static func setWeight (weight: String?)  {
        if let userWeight = weight, let doubleWeight = Double(userWeight) {
            self.weight = doubleWeight
        }
    }
    
    static func setHeight(height: String?)  {
        if let userHeight = height, let doubleHeight = Double(userHeight) {
            self.height = doubleHeight
        }
    }
    
    static func getName () -> String {
        return self.name
    }
    
    static func getAge () -> (String, Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let today = Date()
        let calendar = Calendar.current
        
        let ageComponents = calendar.dateComponents([.year], from: self.age, to: today)
        let age = ageComponents.year!
        
        return (String(age), self.age)
    }
    
    static func getHeight () -> (String, Double) {
        return (String(self.height) ,self.height)
    }
    
    static func getWeight () -> (String, Double) {
        return (String(self.weight), self.weight)
    }
    
    
    static func createAndWriteToFile () {
        let fileName = "Settings"
        let documentDirectoryUrl = try! FileManager.default.url(
            for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true
        )
        fileURL = documentDirectoryUrl.appendingPathComponent(fileName).appendingPathExtension("txt")
        let stringData = "\(getName()) \n\(getAge()) \n\(getWeight()) \n\(getHeight())"
        do {
            try stringData.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print (error)
        }
    }
    
    static func readFromFile () -> (String, String, String, String) {
        var fileName = ""
        var fileAge = ""
        var fileWeight = ""
        var fileHeight = ""
        var readFile = ""
        do {
            readFile = try String(contentsOf: fileURL)
            let strings = readFile.components(separatedBy: .newlines)
            fileName = strings[0]
            fileAge = strings[1]
            fileWeight = strings[2]
            fileHeight = strings[3]
        
        } catch let error as NSError {
            print(error)
        }
        return (fileName, fileAge, fileWeight, fileHeight)
    }
    
}
