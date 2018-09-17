/*:
 
 # Drumkit Touch Pad
 
 This Swift Playgrounds Application imports pictures of different drums and overlays buttons on these pictures so that when a drum is pressed the corresponding drum sound that was linked to the button is played.
 
 */

//Libraries imported
import UIKit
import PlaygroundSupport

//Sets up a white background
class ViewController: UIViewController {
    override func viewDidLoad() {
        view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        //Makes squares with dimensions and colors respectively
        var mySquare = UIView(frame: CGRect(x: 50, y: 100, width: 75, height: 75))
        mySquare.backgroundColor = UIColor.white
        view.addSubview(mySquare)
        
        var bigSquare = UIView(frame: CGRect(x: 75, y: 125, width: 25, height: 25))
        bigSquare.backgroundColor = UIColor.brown
        view.addSubview(bigSquare)
        
        //Creates a button in the top left corner
        var myButton = ClickableUIView(frame: CGRect(x: 5, y: 5, width: 200, height: 275))
        
        //assigns kick drum sound to a variable
        let kickSound = Bundle.main.url(forResource: "Example1/kick", withExtension: "wav")
        
        //sets button color
        myButton.backgroundColor = UIColor.clear
        
        //connects button to sound variable
        myButton.setupAudioPlayer(path: kickSound!)
        
        //sets button when pressed and unpressed
        myButton.setDefaultColor(defaultColor: UIColor.clear)
        myButton.setHighlightColor(highlightColor: UIColor.clear)
        
        //SUPER IMPORTANT: ADDS BUTTON TO PLAYGROUND
        view.addSubview(myButton)
        
        var myButton2 = ClickableUIView(frame: CGRect(x: 225, y: 5, width: 200, height: 275))
        let cymbalSound = Bundle.main.url(forResource: "Example1/cymbal", withExtension: "wav")
        myButton2.backgroundColor = UIColor.clear
        
        myButton2.setupAudioPlayer(path: cymbalSound!)
        
        myButton2
            .setDefaultColor(defaultColor: UIColor.clear)
        myButton2.setHighlightColor(highlightColor: UIColor.clear)
        
        view.addSubview(myButton2)
        
        var myButton3 = ClickableUIView(frame: CGRect(x: 5, y: 290, width: 200, height: 275))
        let hatSound = Bundle.main.url(forResource: "Example1/hat", withExtension: "wav")
        myButton3.backgroundColor = UIColor.clear
        
        myButton3.setupAudioPlayer(path: hatSound!)
        
        myButton3.setDefaultColor(defaultColor: UIColor.clear)
        myButton3.setHighlightColor(highlightColor: UIColor.clear)
        
        view.addSubview(myButton3)
        
        var myButton4 = ClickableUIView(frame: CGRect(x: 225, y: 290, width: 200, height: 275))
        let snareSound = Bundle.main.url(forResource: "Example1/snare", withExtension: "wav")
        myButton4.backgroundColor = UIColor.clear
        
        myButton4.setupAudioPlayer(path: snareSound!)
        
        myButton4.setDefaultColor(defaultColor: UIColor.clear)
        myButton4.setHighlightColor(highlightColor: UIColor.clear)
        
        
        view.addSubview(myButton4)
        
        
        //loads image data to a variable
        let kickImage = UIImage(named: "Example1/otherkick.JPG")
        //displays variable
        let kickImageview = UIImageView(image: kickImage)
        //sets area for image
        kickImageview.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        //adds image to button
        myButton.addSubview(kickImageview)
        
        let cymbalImage = UIImage(named: "Example1/cymbal.PNG")
        let cymbalImageView = UIImageView(image: cymbalImage)
        cymbalImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton2.addSubview(cymbalImageView)
        
        let othercymbalImage = UIImage(named: "Example1/oldcymbal.PNG")
        let othercymbalImageview = UIImageView(image: othercymbalImage)
        othercymbalImageview.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton3.addSubview(othercymbalImageview)
        
        let snareImage = UIImage(named: "Example1/snare.PNG")
        let snareImageview = UIImageView(image: snareImage)
        snareImageview.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myButton4.addSubview(snareImageview)
    }
}
//Must have this line for Playground to work
PlaygroundPage.current.liveView = ViewController()
