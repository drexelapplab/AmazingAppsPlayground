/*:
 #Voice Effects
 
 This Swift Playground Application allows the user to add a cool effect to their voice.
 */

import PlaygroundSupport
import AVFoundation
import UIKit

class MyViewController: UIViewController {
    
    // Setup engine and node instances
    var engine  = AVAudioEngine()
    var delay   = AVAudioUnitDelay()
    var reverb  = AVAudioUnitReverb()
    
    
    var error:NSError?
    
    override func loadView() {
        
        view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        //        let mixer   = engine.mainMixerNode
        
        let input   = engine.inputNode
        let output  = engine.outputNode
        let format  = input.inputFormat(forBus: 0)
        
        // Attach FX nodes to engine
        engine.attach(delay)
        engine.attach(reverb)
        
        // Connect nodes
        engine.connect(input, to: delay, format: format)
        engine.connect(delay, to: reverb, format: format)
        engine.connect(reverb, to: output, format: format)
        
        // Start engine
        do {
            try engine.start()
        } catch {
            
            print("could not start sound engine")
            
        }
        
        // Change FX parameters
        delay.delayTime = 0.5
        delay.feedback = 90
    }
    
}

// Keep playground running
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = MyViewController()
