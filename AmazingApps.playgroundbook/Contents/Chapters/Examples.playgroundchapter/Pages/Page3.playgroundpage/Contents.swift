
import CoreMotion
import UIKit
import PlaygroundSupport
import AVFoundation

class myClass:UIViewController{
    let motion = CMMotionManager()
    var timer: Timer!
    var maraca: AVAudioPlayer?
    var coin: AVAudioPlayer?
    
    override func loadView() {
        timer = Timer()
        view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        let maracaImage = UIImage(named: "Example3/maracas.PNG")
        let maracaImageview = UIImageView(image: maracaImage)
        maracaImageview.frame = CGRect(x: 242, y: 200, width: 200, height: 200)
        
        startAccelerometers()
        
    }
    
    override func viewDidLayoutSubviews() {
        let image = UIImage(named: "Example3/maracas.png")
        let imageView = UIImageView(frame: CGRect(x:10, y:25, width: 400, height: 400))
        imageView.image = image
        self.view.addSubview(imageView)
    }
    
    func startAccelerometers() {
        // Make sure the accelerometer hardware is available.
        if self.motion.isAccelerometerAvailable {
            self.motion.accelerometerUpdateInterval = 1.0 / 60.0  // 60 Hz
            self.motion.startAccelerometerUpdates()
            
            // Configure a timer to fetch the data.
            self.timer = Timer(fire: Date(), interval: (1.0/60.0),
                               repeats: true, block: { (timer) in
                                // Get the accelerometer data.
                                
                                if let data = self.motion.accelerometerData {
                                    let x = data.acceleration.x
                                    let y = data.acceleration.y
                                    let z = data.acceleration.z
                                    
                                    // Use the accelerometer data in your app.
                                    let maracaPath = Bundle.main.path(forResource: "Example3/maraca", ofType:"wav")!
                                    let maracaURL = URL(fileURLWithPath: maracaPath)
                                    
                                    let coinPath = Bundle.main.path(forResource: "Example3/coin", ofType:"wav")!
                                    
                                    let coinURL = URL(fileURLWithPath: coinPath)
                                    
                                    
                                    
                                    if z > 0.5 {
                                        do {
                                            self.maraca = try AVAudioPlayer(contentsOf: maracaURL)
                                            self.maraca?.play()
                                        } catch {
                                            // couldn't load file :(
                                        }
                                    }
                                    if x > 0.5 {
                                        do {
                                            self.coin = try AVAudioPlayer(contentsOf: coinURL)
                                            self.coin?.play()
                                        } catch {
                                            // couldn't load file :(
                                        }
                                    }
                                }
            })
            
            // Add the timer to the current run loop.
            RunLoop.current.add(self.timer!, forMode: .defaultRunLoopMode)
        }
    }
}

PlaygroundPage.current.liveView = myClass()

