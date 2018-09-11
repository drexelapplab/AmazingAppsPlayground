import Foundation
import UIKit
import AVFoundation

public class ClickableUIView: UIView {
    
    var highlightColor = UIColor.cyan
    var defaultColor = UIColor.blue
    var player = AVAudioPlayer()
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect, defaultColor: UIColor, highlightColor: UIColor) {
        super.init(frame: frame)
        self.defaultColor = defaultColor
        self.highlightColor = highlightColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = highlightColor //Color when UIView is clicked.
        self.player.currentTime = 0
        self.player.play()
    }

    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = defaultColor //Color when UIView is clicked.
        self.player.stop()
    }
    
    public func setHighlightColor(highlightColor: UIColor) {
        self.highlightColor = highlightColor
    }
    
    public func setDefaultColor(defaultColor: UIColor) {
        self.defaultColor = defaultColor
    }
    
    public func setupAudioPlayer(path: Foundation.URL) {

        do {
            player = try AVAudioPlayer(contentsOf: path)
        }catch {
            print("Something went wrong with the audio player")
        }
        
    }
    
}
