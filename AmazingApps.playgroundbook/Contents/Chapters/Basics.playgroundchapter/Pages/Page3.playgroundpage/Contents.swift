/*:
 # AmazingApps
 ## Buttons
 
 We want users to be able to interact with our applications, so let's add some buttons that trigger audio samples. These buttons are created using the ClickableUIView() object. This is a custom built class that triggers an audio sample when pressed.
 */
//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        /***************************************************
         Exercise 3:
         Let's add a button to trigger an audio sample.
         Once you have added a button, see if you can add
         three more with different audio samples.
         ***************************************************/
        
        //#-editable-code
        //#-copy-destination("Page2", id2)
        //#-end-copy-destination
        //#-end-editable-code
        
    }
}

//#-hidden-code
PlaygroundPage.current.liveView = ViewController()
PlaygroundPage.current.assessmentStatus = .pass(message: "Great job! Now go check out the chapter containing examples from previous SMT students.")
//#-end-hidden-code
