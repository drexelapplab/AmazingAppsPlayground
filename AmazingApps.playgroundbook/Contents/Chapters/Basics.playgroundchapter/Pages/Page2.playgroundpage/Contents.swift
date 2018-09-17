/*:
 # Amazing Apps
 ## Labels
 
 Let's create a label to place on our background. Labels allow us to add text to our application. We'll also learn how the coordinate system for Swift Playgrounds works. Unlike coordinate systems you might see in a math class, the origin point (0,0) is located in the upper left corner of the screen. The X-Axis values increase as you move from left to right. The Y-Axis values increase as you move from top to bottom.
 */
//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        /***************************************************
         Exercise 2:
         Let's create a label for our background and add some
         text. Once you have made one label, see if you can
         add another label in a different location.
         ***************************************************/
        
        //#-copy-source(id2)
        //#-editable-code
        //#-copy-destination("Page1", id1)
        //#-end-copy-destination
        //#-end-editable-code
        //#-end-copy-source
        
    }
}

//: [Go To The Next Page](@next)

//#-hidden-code
PlaygroundPage.current.liveView = ViewController()
PlaygroundPage.current.assessmentStatus = .pass(message: "Great job! Scroll to the bottom of your code to find the button to take you to the next page.")
//#-end-hidden-code
