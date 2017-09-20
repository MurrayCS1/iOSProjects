//
//  SecondViewController.swift
//  bttf


import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNum: UILabel!
    @IBOutlet weak var secNum: UILabel!
    @IBOutlet weak var thirdNum: UILabel!
    @IBOutlet weak var fourthNum: UILabel!
    
    let utils = Utilities()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   @IBAction func timeTravelButtonClicked(_ sender: Any) {
        let year = utils.getRandomYear()
        animateItem(duration: 0.5, delay: 0, object: firstNum)
        animateItem(duration: 0.5, delay: 0.1, object: secNum)
        animateItem(duration: 0.5, delay: 0.2, object: thirdNum)
        animateItem(duration: 0.5, delay: 0.3, object: fourthNum)
        firstNum.text = utils.getLetterAtIndex(str: year, location: 0)
        secNum.text = utils.getLetterAtIndex(str: year, location: 1)
        thirdNum.text = utils.getLetterAtIndex(str: year, location: 2)
        fourthNum.text = utils.getLetterAtIndex(str: year, location: 3)
    }
    
    
    func animateItem(duration: Double, delay: Double, object: UIView) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
         //optional code to complete at end of animation
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

