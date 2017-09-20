//
//  FirstViewController.swift
//  bttf

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var yearFirstLabel: UILabel!
    @IBOutlet weak var yearSecLabel: UILabel!
    @IBOutlet weak var yearThdLabel: UILabel!
    @IBOutlet weak var yearFthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var utils = Utilities()
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let year = Utilities().getCurrentYear()
        yearFirstLabel.text = utils.getLetterAtIndex(str: year, location: 0)
        yearSecLabel.text = utils.getLetterAtIndex(str: year, location: 1)
        yearThdLabel.text = utils.getLetterAtIndex(str: year, location: 2)
        yearFthLabel.text = utils.getLetterAtIndex(str: year, location: 3)
        setupTimer()
        showTime()
    }

    func animateBackground() {
        self.view.backgroundColor = utils.getRandomColor()
        UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            self.view.alpha = 0.8
        }) { (true) in
            self.view.alpha = 1.0
        }
    }
    
    func setupTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.showTime()
            self.animateBackground()
        })
    }
    func showTime() {
        var timeStr = utils.getCurrentTime()
        dateLabel.text = timeStr
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

