/*:
 
 # Audio Sample Pad
 
This collection of buttons showcase the set of sounds you can choose from for your project. Just press and hold down on a button to begin!
  */
import UIKit
import PlaygroundSupport

class MyClass : UIViewController {
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        var x=20
        var y=50
        var indexer=0
        let fileNames = ["chord1", "chord2","kick1","kick2", "snare1","snare2","snare3","synth1","synth2","synth3","TrumpD","TrumpG","TrumpA","Applause","clap","kick"]
        
        let listofiles = fileNames.map {Bundle.main.url(forResource: $0, withExtension: "wav")}
      
        for i in 1 ... 4{
            for j in 1 ... 4{
                indexer=4*(j-1)+(i-1)
                var sq = UIView(frame:CGRect( x:x, y:y, width:75, height: 75))
                sq.backgroundColor=UIColor.gray
                view.addSubview(sq)
                var myButton = ClickableUIView(frame: CGRect(x: x, y:y, width: 75, height: 75))
                var myLabel1 = UILabel(frame: CGRect(x: x,y: y, width: 75, height: 75))
                myLabel1.text = fileNames[indexer]+".wav"
                myLabel1.textColor = UIColor.cyan
                myLabel1.font = myLabel1.font.withSize(13)
                myLabel1.textAlignment = NSTextAlignment.center;
                view.addSubview(myLabel1)
                
                myButton.backgroundColor = UIColor.clear
                myButton.setupAudioPlayer(path: listofiles[indexer]!)
                myButton.setDefaultColor(defaultColor: UIColor.clear)
                myButton.setHighlightColor(highlightColor: UIColor.gray)
                view.addSubview(myButton)
                
                
                y += 100
                
            };
            y -= 400
            x += 80
        }
        
        
        
    }}
PlaygroundPage.current.liveView=MyClass()
