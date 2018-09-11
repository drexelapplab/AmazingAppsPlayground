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
        view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        var mySquare = UIView(frame: CGRect(x: 50, y: 100, width: 75, height: 75))
        mySquare.backgroundColor = UIColor.white
        view.addSubview(mySquare)
        
        var bigSquare = UIView(frame: CGRect(x: 75, y: 125, width: 25, height: 25))
        bigSquare.backgroundColor = UIColor.brown
        view.addSubview(bigSquare)
        
        /*
         var myLabel = UILabel(frame: CGRect(x: 20, y: 200, width: 200, height: 30))
         myLabel.text = "Hello World"
         view.addSubview(myLabel)
         */
        
        var myButton = ClickableUIView(frame: CGRect(x: 5, y: 5, width: 200, height: 275))
        let kickSound = Bundle.main.url(forResource: "kick", withExtension: "wav")
        myButton.backgroundColor = UIColor.clear
        
        myButton.setupAudioPlayer(path: kickSound!)
        
        myButton.setDefaultColor(defaultColor: UIColor.clear)
        
        myButton.setHighlightColor(highlightColor: UIColor.clear)
        
        view.addSubview(myButton)
        
        var myButton2 = ClickableUIView(frame: CGRect(x: 225, y: 5, width: 200, height: 275))
        let cymbalSound = Bundle.main.url(forResource: "cymbal", withExtension: "wav")
        myButton2.backgroundColor = UIColor.clear
        
        myButton2.setupAudioPlayer(path: cymbalSound!)
        
        myButton2
            .setDefaultColor(defaultColor: UIColor.clear)
        myButton2.setHighlightColor(highlightColor: UIColor.clear)
        
        view.addSubview(myButton2)
        
        var myButton3 = ClickableUIView(frame: CGRect(x: 5, y: 290, width: 200, height: 275))
        let hatSound = Bundle.main.url(forResource: "hat", withExtension: "wav")
        myButton3.backgroundColor = UIColor.clear
        
        myButton3.setupAudioPlayer(path: hatSound!)
        
        myButton3.setDefaultColor(defaultColor: UIColor.clear)
        myButton3.setHighlightColor(highlightColor: UIColor.clear)
        
        view.addSubview(myButton3)
        
        var myButton4 = ClickableUIView(frame: CGRect(x: 225, y: 290, width: 200, height: 275))
        let snareSound = Bundle.main.url(forResource: "snare", withExtension: "wav")
        myButton4.backgroundColor = UIColor.clear
        
        myButton4.setupAudioPlayer(path: snareSound!)
        
        myButton4.setDefaultColor(defaultColor: UIColor.clear)
        myButton4.setHighlightColor(highlightColor: UIColor.clear)
        
        
        view.addSubview(myButton4)
        
        var myButton5 = ClickableUIView(frame: CGRect(x: 125, y: 500, width: 200, height: 100))
        let freshSound = Bundle.main.url(forResource: "Julian_FreshPrince", withExtension: "wav")
        myButton5.backgroundColor = UIColor.clear
        
        myButton5.setupAudioPlayer(path: freshSound!)
        
        myButton5.setDefaultColor(defaultColor: UIColor.clear)
        myButton5.setHighlightColor(highlightColor: UIColor.clear)
        
        
        view.addSubview(myButton5)
        
        let kickImage = UIImage(named: "otherkick.JPG")
        let kickImageview = UIImageView(image: kickImage)
        kickImageview.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton.addSubview(kickImageview)
        
        let cymbalImage = UIImage(named: "cymbal.PNG")
        let cymbalImageView = UIImageView(image: cymbalImage)
        cymbalImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton2.addSubview(cymbalImageView)
        
        let othercymbalImage = UIImage(named: "oldcymbal.PNG")
        let othercymbalImageview = UIImageView(image: othercymbalImage)
        othercymbalImageview.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton3.addSubview(othercymbalImageview)
        
        let snareImage = UIImage(named: "snare.PNG")
        let snareImageview = UIImageView(image: snareImage)
        snareImageview.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton4.addSubview(snareImageview)
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
