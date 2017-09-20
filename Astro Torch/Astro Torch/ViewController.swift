// Simple app that can alternatively give you a red light (for keeping your night vision) or a blue light (for brighter light)

import UIKit

class ViewController: UIViewController {

    var screenIsRed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        
        if (screenIsRed) {
             self.view.backgroundColor = UIColor.blue;
        } else {
            self.view.backgroundColor = UIColor.red;
        }
        screenIsRed = !screenIsRed
    }

}

