//
//  Utilities.swift
//  bttf


import Foundation
import UIKit

class Utilities {
    func getCurrentYear() -> String {
        let calendar = Calendar.current
        return String(calendar.component(.year, from: getDate()))
    }
    
    func getLetterAtIndex(str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    
    func getRandomYear() -> String {
        return String(arc4random_uniform(3500)+1000)
    }
    
    func getCurrentTime() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short 
        formatter.timeStyle = .medium
        let timeString = formatter.string(from: getDate())
        return timeString
    }
    
    func getRandomColor() -> UIColor {
        let color = UIColor(red: getRandZeroOne(), green: getRandZeroOne(), blue: getRandZeroOne(), alpha: 1.0)
        return color
    }
    
    func getRandZeroOne() -> CGFloat {
        return CGFloat(Double(arc4random_uniform(100))/100.0)
    }
    
    func getDate() -> Date {
        return Date()
    }
}
