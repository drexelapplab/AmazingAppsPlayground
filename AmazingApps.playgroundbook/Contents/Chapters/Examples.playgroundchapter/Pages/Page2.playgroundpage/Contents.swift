/*:
 
 # Emoji Samples
 
This Swift Playground Application is a soundpad with prerecorded samples assigned to a variety of appropirate emojis.
 */

//Libraries imported
import UIKit
import PlaygroundSupport

//sets up a white background
class ViewController: UIViewController {
    override func viewDidLoad() {
        
        view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        
        //creates a button in the top left corner of the screen
        var myButton = ClickableUIView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        //assigns a sound file to a variable
        let kickSound = Bundle.main.url(forResource: "Example2/Jared_HighStrings11_FreshPrince", withExtension: "wav")
        //sets background color of button
        myButton.backgroundColor = UIColor.white
        //connects sound variable to button
        myButton.setupAudioPlayer(path: kickSound!)
        //SUPER IMPORTANT: ADDS BUTTON TO PLAYGROUND
        view.addSubview(myButton)
        
        //assigns image data to a variable
        let coolImage = UIImage(named: "Example2/IMG_0034.JPG")
        //viualizes image data
        let coolimageview = UIImageView(image: coolImage)
        //sets place for image
        coolimageview.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        //adds image to playground
        myButton.addSubview(coolimageview)
        
        
        var myButton2 = ClickableUIView(frame: CGRect(x: 283, y: 0, width: 150, height: 150))
        let supSound = Bundle.main.url(forResource: "Example2/Jared_HighStrings22_FreshPrince", withExtension: "wav")
        myButton2.backgroundColor = UIColor.purple
        myButton2.setupAudioPlayer(path: supSound!)
        view.addSubview(myButton2)
        
        let coolImage2 = UIImage(named: "Example2/IMG_0034.JPG")
        let coolimage2view = UIImageView(image: coolImage2)
        coolimage2view.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        myButton2.addSubview(coolimage2view)
        
        //creates a label
        var myLabel3 = UILabel(frame: CGRect(x:360 ,y: 480, width: 300, height: 15))
        //content of label
        myLabel3.text = "$$$$$$"
        //adds label to the playground
        view.addSubview(myLabel3)
        
        var myButton3 = ClickableUIView(frame: CGRect(x: 0, y: 410, width: 150, height: 150))
        let laughSound = Bundle.main.url(forResource: "Example2/laugh", withExtension: "mp3")
        view.addSubview(myButton3)
        
        let funnyImage = UIImage(named: "Example2/IMG_0030.JPG")
        let funnyimageview = UIImageView(image: funnyImage)
        funnyimageview.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        
        myButton3.addSubview(funnyimageview)
        
        var myButton4 = ClickableUIView(frame: CGRect(x:281, y: 410, width: 150, height: 150))
        let cashSound = Bundle.main.url(forResource: "Example2/cash", withExtension: "wav")
        myButton4.backgroundColor = UIColor.clear
        myButton4.setupAudioPlayer(path: cashSound!)
        view.addSubview(myButton4)
        
        let moneyImage = UIImage(named: "Example2/IMG_0029.PNG")
        let moneyimageview = UIImageView(image: moneyImage)
        moneyimageview.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        
        myButton4.addSubview(moneyimageview)
        
        var myButton5 = ClickableUIView(frame: CGRect(x: 25, y: 200, width: 100, height: 100))
        let coolSound = Bundle.main.url(forResource: "Example2/cool", withExtension: "wav")
        myButton5.backgroundColor = UIColor.clear
        myButton5.setupAudioPlayer(path: coolSound!)
        myButton5.setDefaultColor(defaultColor: UIColor.clear)
        myButton5.setHighlightColor(highlightColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        view.addSubview(myButton5)
        
        let coollImage = UIImage(named: "Example2/IMG_0033.PNG")
        let coollimageview = UIImageView(image: coollImage)
        coollimageview.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        myButton5.addSubview(coollimageview)
        
        var myButton6 = ClickableUIView(frame: CGRect(x: 160, y: 200, width: 100, height: 100))
        
        let freshSound = Bundle.main.url(forResource: "Example2/sup", withExtension: "mp3")
        myButton6.backgroundColor = UIColor.clear
        myButton6.setupAudioPlayer(path: freshSound!)
        myButton6.setDefaultColor(defaultColor: UIColor.clear)
        myButton6.setHighlightColor(highlightColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        view.addSubview(myButton6)
        
        let wspImage = UIImage(named: "Example2/IMG_0031.PNG")
        let wspimageview = UIImageView(image: wspImage)
        wspimageview.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        myButton6.addSubview(wspimageview)
        
        var myButton7 = ClickableUIView(frame: CGRect(x: 300, y: 200, width: 100, height: 100))
        
        let dopeSound = Bundle.main.url(forResource: "Example2/mad", withExtension: "wav")
        myButton7.backgroundColor = UIColor.clear
        myButton7.setupAudioPlayer(path: dopeSound!)
        myButton7.setDefaultColor(defaultColor: UIColor.clear)
        myButton7.setHighlightColor(highlightColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        view.addSubview(myButton7)
        
        let madImage = UIImage(named: "Example2/IMG_0032.PNG")
        let madlimageview = UIImageView(image: madImage)
        madlimageview.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        myButton7.addSubview(madlimageview)
        
    }
}
PlaygroundPage.current.liveView = ViewController()
