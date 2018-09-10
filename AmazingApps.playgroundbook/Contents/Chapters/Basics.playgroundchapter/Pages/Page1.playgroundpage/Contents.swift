/*:
 
 # Amazing Apps
 
 The Amazing Apps project allows students to develop simple applications using Swift Playgrounds, an iPad app that provides a coding environment where users can see the results of their work directly on the device. Swift Playgrounds allows students to program using the Swift programming language, the tool that many app developers use to build iOS apps currently available on the App Store.
 

 Goals for this chapter:
 - Create a background view
 - Change background view's color
 - Add a label to the background view
 - Add buttons that trigger audio samples to the project
 */
//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code

class ViewController: UIViewController {
    override func viewDidLoad() {

        /***************************************************
         Exercise 1:
         Lets create a background and set its color.
         ***************************************************/
        
        //#-copy-source(id1)
        //#-editable-code
        //#-end-editable-code
        //#-end-copy-source
    }
}

//: [Go To The Next Page](@next)

//#-hidden-code
PlaygroundPage.current.liveView = ViewController()
PlaygroundPage.current.assessmentStatus = .pass(message: "Great job! Scroll to the bottom of your code to find the button to take you to the next page.")
//#-end-hidden-code
