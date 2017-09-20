//
//  ViewController.swift
//  Temp Converter
//
//  Created by Christopher Stephen Murray on 9/14/17.
//  Copyright © 2017 CSM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var entryTempTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var numConversions: UILabel!
    
    var convertClickCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertButtonClicked(_ sender: Any) {
        if let result = entryTempTextField.text {
            if (result == "") {
                return
            } else {
            if let num = Double(result) {
                let answer = calcAnswer(num : num)
                answerLabel.text = String(answer)
                updateCount()
            }
        }
        }
    }
    
    func updateCount() {
        convertClickCount += 1
        numConversions.text = String(convertClickCount) + " Conversions"
    }
    
    func calcAnswer (num: Double) -> Double {
        return (num * (9/5) + 32)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

