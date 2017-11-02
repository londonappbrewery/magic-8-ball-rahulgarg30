//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rahul Garg on 27/10/17.
//  Copyright © 2017 Rahul Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

     var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
   
    NewBallImage()
        
    }
    
    func NewBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        
       imageView.image = UIImage(named: ballArray[randomBallNumber])

    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        NewBallImage()    }
    
}

