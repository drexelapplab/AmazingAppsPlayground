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


/*:
 * Callout(Code Explanation):
 All of the code we write for this project will be contained in a class named `ViewController`.
 */

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        //#-copy-source(id1)
        /***************************************************
         Exercise 1:
            Lets create a background and set its color.
         ***************************************************/
        
        //#-editable-code
        //#-end-editable-code
        
        /***************************************************
         Exercise 2:
         Lets create a label for our background and add some
         text.
         ***************************************************/
        
        //#-editable-code
        //#-end-editable-code
        //#-end-copy-source
    }
}


//: [Next](@next)

//#-hidden-code
PlaygroundPage.current.liveView = ViewController()
PlaygroundPage.current.assessmentStatus = .pass(message: "Great job!")
//#-end-hidden-code
