/*:
 
 # Amazing Apps
 
 The Amazing Apps project allows students to develop simple applications using Swift Playgrounds, an iPad app that provides a coding environment where users can see the results of their work directly on the device. Swift Playgrounds allows students to program using the Swift programming language, the tool that many app developers use to build iOS apps currently available on the App Store.
 

 Goals for this chapter:
 - Create a background view
 - Change background view's color
 - Add a label to the background view
 */
//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        //#-editable-code
        //#-copy-destination("Page1", id1)
        
        //#-end-copy-destination
        //#-end-editable-code
        
    }
}

//#-hidden-code
PlaygroundPage.current.liveView = ViewController()
//#-end-hidden-code
