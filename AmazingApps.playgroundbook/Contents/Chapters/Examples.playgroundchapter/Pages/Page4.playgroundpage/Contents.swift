/*:
 
 #Slider Synth
 
 This Swift Playground Application consists of four different pads that will repeat their sound for a time that is proportional to how high the slider position is. */

//Libraries needed for this playground
import UIKit
import PlaygroundSupport

//Setup for user interface
class MyClass: UIViewController {
    
    //assigns variables as Clickable
    var myRoundButton: ClickableUIView!
    var myButton1: ClickableUIView!
    var myButton2: ClickableUIView!
    var myButton3: ClickableUIView!
    var myButton4: ClickableUIView!
    
    //Sets a brown background
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.brown
        self.view = view
        
        //Area for the first button
        myButton1 = ClickableUIView(frame: CGRect(x: 22, y: 30, width: 180, height: 230))
        
        //assigns sound file to a variable
        let kickSound = Bundle.main.url(forResource: "Example4/bass", withExtension: "wav")
        //sets color of button
        myButton1.backgroundColor = UIColor.white
        //links sound variable to button
        myButton1.setupAudioPlayer(path: kickSound!)
        //default color of button
        myButton1.setDefaultColor(defaultColor: UIColor.white)
        //color of button when pressed
        myButton1.setHighlightColor(highlightColor: UIColor.yellow)
        //SUPER IMPORTANT: ADDS BUTTON TO PLAYGROUND
        view.addSubview(myButton1)
        
        //Label for first button
        var myLabel1 = UILabel (frame: CGRect(x: 92, y: 10, width: 60, height: 20))
        myLabel1.text = "Bass"
        view.addSubview(myLabel1)
        
       //Creates a slider
        var mySlider1 = UISlider (frame: CGRect(x: 18, y: 268, width: 180, height: 20))
        //Minimum and maximum values of slider
        mySlider1.minimumValue = 1
        mySlider1.maximumValue = 40
        //color of slider
        mySlider1.tintColor = UIColor.white
        self.view.addSubview(mySlider1)
        
        //a number to identify this particular slider
        mySlider1.tag = 1
        //sets up slider function
        mySlider1.addTarget(self, action: #selector(sliderValueDidChange(_:)), for: .valueChanged)
        
        //creates button in the top right corner
        myButton2 = ClickableUIView(frame: CGRect(x: 230, y: 30, width: 180, height: 230))
        
        //assigns sound file to a variable
        let kickSound2 = Bundle.main.url(forResource: "Example4/tom", withExtension: "wav")
        myButton2.setupAudioPlayer(path: kickSound2!)
        
        myButton2.backgroundColor = UIColor.gray
        myButton2.setDefaultColor(defaultColor: UIColor.gray)
        myButton2.setHighlightColor(highlightColor: UIColor.yellow)
        view.addSubview(myButton2)
        
        //Label for 2
        var myLabel2 = UILabel(frame:CGRect(x:309, y:-79, width: 35, height:200))
        myLabel2.text = "Tom"
        view.addSubview(myLabel2)
        
        //Slider for 2
        var mySlider2 = UISlider (frame: CGRect(x: 226, y: 268, width: 180, height: 20))
        mySlider2.minimumValue = 1
        mySlider2.maximumValue = 40
        mySlider2.tintColor = UIColor.gray
        self.view.addSubview(mySlider2)
        
        mySlider2.tag = 2
        mySlider2.addTarget(self, action: #selector(sliderValueDidChange(_:)), for: .valueChanged)
        
        //Button 3
        myButton3 = ClickableUIView(frame: CGRect(x: 23, y: 360, width: 180, height: 230))
        
        let kickSound3 = Bundle.main.url(forResource: "Example4/snare", withExtension: "wav")
        myButton3.backgroundColor = UIColor.gray
        myButton3.setupAudioPlayer(path: kickSound3!)
        myButton3.setDefaultColor(defaultColor: UIColor.gray)
        myButton3.setHighlightColor(highlightColor: UIColor.yellow)
        view.addSubview(myButton3)
        
        //Label for 3
        var myLabel3 = UILabel (frame: CGRect(x: 94, y: 570, width: 60, height: 60))
        myLabel3.text = "Snare"
        view.addSubview (myLabel3)
        
        //Slider for 3
        var mySlider3 = UISlider (frame: CGRect(x: 18, y: 332, width: 180, height: 20))
        mySlider3.minimumValue = 1
        mySlider3.maximumValue = 40
        mySlider3.tintColor = UIColor.gray
        self.view.addSubview(mySlider3)
        
        mySlider3.tag = 3
        mySlider3.addTarget(self, action: #selector(sliderValueDidChange(_:)), for: .valueChanged)
        
        //Button 4
        myButton4 = ClickableUIView(frame: CGRect(x: 230, y: 360, width: 180, height: 230))
        
        let kickSound4 = Bundle.main.url(forResource: "Example4/cymbal", withExtension: "wav")
        myButton4.backgroundColor = UIColor.white
        myButton4.setupAudioPlayer(path: kickSound4!)
        myButton4.setDefaultColor(defaultColor: UIColor.white)
        myButton4.setHighlightColor(highlightColor: UIColor.yellow)
        view.addSubview(myButton4)
        
        //Label for 4
        var myLabel4 = UILabel (frame: CGRect(x: 297, y: 570, width: 60, height: 60))
        myLabel4.text = "Cymbal"
        view.addSubview(myLabel4)
        
        //Slider for 4
        var mySlider4 = UISlider (frame: CGRect(x: 225, y: 332, width: 180, height: 20))
        mySlider4.minimumValue = 1
        mySlider4.maximumValue = 40
        mySlider4.tintColor = UIColor.white
        self.view.addSubview(mySlider4)
        
        mySlider4.tag = 4
        mySlider4.addTarget(self, action: #selector(sliderValueDidChange(_:)), for: .valueChanged)
        
    }
    
    //function needed for sliders
    @objc func sliderValueDidChange(_ sender:UISlider!)
    {
        if sender.tag == 1 {
            myButton1.setLoopCount(count: Int(sender.value))
        }
        if sender.tag == 2 {
            myButton2.setLoopCount(count: Int(sender.value))
        }
        if sender.tag == 3 {
            myButton3.setLoopCount(count: Int(sender.value))
        }
        if sender.tag == 4 {
            myButton4.setLoopCount(count: Int(sender.value))
        }
    }
}

PlaygroundPage.current.liveView = MyClass()
