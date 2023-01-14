//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Juuso Loikkanen on 9.1.2023.
//  Copyright © 2023 Simo Loikkanen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Declare as constant
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
    }
    
    func newBallImage() {
        // cast Int32 to Int
        // Generates random number
        randomBallNumber = Int(arc4random_uniform(5))
        
        // Generates random image
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    // What to do after shaking the phone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    // Random image when loading
    override func viewDidLoad() {
        super.viewDidLoad()
     
        newBallImage()
    }
}


