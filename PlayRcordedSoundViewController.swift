//
//  PlayRcordedSoundViewController.swift
//  PitchPerfect
//
//  Created by andrew on 14/03/2015.
//  Copyright (c) 2015 Firekite. All rights reserved.
//

import UIKit
import AVFoundation

class PlayRcordedSoundViewController: UIViewController {

    
    // audioPLayer declared here as a global variable
    var audioPlayer : AVAudioPlayer!
    var receivedAudio: RecordedAudio! //also data to be recieved from sender seque
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //identify the audio file and prepare toplay an audio sound-----------------------
//        if var fileSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Regardez", ofType: "wav")!){
//            
//            var error:NSError?
//            //audioPlayer intialised here, only needs to be done once so is here
//            audioPlayer = AVAudioPlayer(contentsOfURL: fileSound, error: &error)
//            audioPlayer.enableRate = true
//            println(fileSound)
//        } else {
//            println("audio file not found")
//        }
        //audioPlayer intialised here, only needs to be done once so is here
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
        
        //------------------------------------------
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


    

    @IBAction func buttonPlaySlowAudio(sender: UIButton) {
        // audioPLayer is used here
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }

    @IBAction func buittonPlayFast(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 2.0
        audioPlayer.currentTime = 0.0
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
    
    
    @IBAction func buttonStopPlayer(sender: UIButton) {
        audioPlayer.stop()
        
    }
    
}
