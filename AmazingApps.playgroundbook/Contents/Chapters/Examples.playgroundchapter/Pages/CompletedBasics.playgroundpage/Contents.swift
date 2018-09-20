/***************************************************
 Completed Basics Exercise:
 
 Feel free to use this as a cheat sheet for your own instruction!
 
 ***************************************************/

import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        
        //BACKGROUNDS
        
        //This creates a variable called view that allows the programmer to add objects to the class "UIView"
        var view = UIView()
        //This sets the background color of the view to red, using the a method of the class UIColor
        view.backgroundColor = UIColor.red
        //This calls upon itself to display the view you have just made with the red background
        self.view = view
        
        //LABELS
        
        //This creates a variable called label that calls upon the class "UILabel". The label is set on a graph where the origin is in the top left corner. The x direction extends positively to the right and the y direction extends positively downwards. Once the coordinates are set the width will expand to the right and the height will expand downwards, creating a box.
        var label = UILabel (frame: CGRect(x: 100, y: 100, width: 350, height: 50))
        //Adds whatever text is in the quotation marks, using the dot operator and text (.text) to set the text.
        label.text = "Reimagining Learning 2018"
        //Calls upon itself to display the labe you have just created
        view.addSubview(label)
        
        
        //BUTTONS
        
        //Creates a button using the custom Class "ClickableUIView". Works very similarly to the label class.
        var mybutton = ClickableUIView(frame: CGRect(x:100, y:275, width: 100, height: 100))
        //Creates a constant named cymbal to the "cymbal.wav" file in the pathway Resources/Example1
        let cymbal = Bundle.main.url(forResource: "Example1/cymbal", withExtension: "wav")
        //sets background color of button similarly to setting background of view
        mybutton.backgroundColor = UIColor.cyan
        //make the default color of the button (when the button is not pressed) to the color of the background set above
        mybutton.setDefaultColor(defaultColor: UIColor.cyan)
        //color of the button when the button is pressed and held
        mybutton.setHighlightColor(highlightColor: UIColor.yellow)
        //This function links the variable "cymbal" to the button. Dont forget the "!" after the constant
        mybutton.setupAudioPlayer(path: cymbal!)
        //This, like before, adds the button with its new sound functionality to your view
        view.addSubview(mybutton)
        
        
        
        
        
        

        
    }
}

PlaygroundPage.current.liveView = ViewController()
