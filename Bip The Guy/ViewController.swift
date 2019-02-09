//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Ale Escalante on 2/4/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //Properties


    @IBOutlet weak var ImageToPunch: UIImageView!
    
    var audioplayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    //Functions
    func animateImage(){
        let bounds = self.ImageToPunch.bounds
        let shrinkValue: CGFloat = 60
        //shrink our imageToPunch by 60 pixels -- i dont rlly understadn the diff between x,y and width,height-- ask
        self.ImageToPunch.bounds = CGRect(x: self.ImageToPunch.bounds.origin.x + shrinkValue, y: self.ImageToPunch.bounds.origin.y + shrinkValue , width: self.ImageToPunch.bounds.size.width - shrinkValue, height: self.ImageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations:{self.ImageToPunch.bounds = bounds}, completion: nil)
    }
    // Sounds Function
        func playSound(soundname:String, audioPlayer: inout AVAudioPlayer){
            //can we load in the file soundName?
            if let sound = NSDataAsset(name: soundname){
                //check if sound.data is a sound file
                do{
                    try audioPlayer = AVAudioPlayer(data: sound.data)
                    audioPlayer.play()
                }catch{
                    //if sound.data is not a valid audio file
                    print("ERROR: data in \(soundname) couldn't be played as a sound.")
                }
            }else{
                // if reading in the NSDataAsset didn't work, tell user/ report the error
                print("ERROR: file \(soundname) didn't load")
        }
    }
    // Actions
    @IBAction func CameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func LibraryPressed(_ sender: UIButton ) {
    }
    
    @IBAction func ImageTapped(_ sender: UITapGestureRecognizer) {
        print("Image tapped!")
        animateImage()
        playSound(soundname: "PunchSound", audioPlayer: &audioplayer)
    }
    
    
}

