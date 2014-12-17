
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0.5, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func slideridChangeValue(sender: UISlider) {
        println(sender.value)
        
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        if (sender.value > 0.500000) {
            UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
            println("Black Status Bar Text")
            resetButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
//            sliderOutlet.maximumTrackTintColor = UIColor.blackColor()
        } else if (sender.value < 0.500001) {
            UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
            println("White Status Bar Text")
            resetButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
//            sliderOutlet.maximumTrackTintColor = UIColor.whiteColor()
        }
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        sliderOutlet.value = 0.5
        view.backgroundColor = UIColor(white: 0.5, alpha: 1)

    }
    //wat?
}

