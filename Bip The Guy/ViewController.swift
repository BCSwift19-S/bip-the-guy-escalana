//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Ale Escalante on 2/4/19.
//  Copyright © 2019 Ale Escalante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImagetoPunch: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func CameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func LibraryPressed(_ sender: UIButton ) {
    }
    
    @IBAction func ImageTapped(_ sender: UITapGestureRecognizer) {
        print("Image tapped!")
    }
    
    
}

