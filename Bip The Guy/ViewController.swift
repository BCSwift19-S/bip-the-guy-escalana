//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Ale Escalante on 2/4/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties

    @IBOutlet weak var ImagetoPunch: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    //Functions
    func animateImage(){
        let bounds = self.ImagetoPunch.bounds
        let shrinkValue: CGFloat = 60
        //shrink our imageToPunch by 60 pixels -- i dont rlly understadn the diff between x,y and width,height-- ask
        self.ImagetoPunch.bounds = CGRect(x: self.ImagetoPunch.bounds.origin.x + shrinkValue, y: self.ImagetoPunch.bounds.origin.y + shrinkValue , width: self.ImagetoPunch.bounds.size.width - shrinkValue, height: self.ImagetoPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations:{self.ImagetoPunch.bounds = bounds}, completion: nil)
    }
    // Actions
    @IBAction func CameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func LibraryPressed(_ sender: UIButton ) {
    }
    
    @IBAction func ImageTapped(_ sender: UITapGestureRecognizer) {
        print("Image tapped!")
    }
    
    
}

