//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Claudio Scarpellini on 05/12/18.
//  Copyright © 2018 Claudio Scarpellini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomIndexForBall : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        update8BallContent()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        update8BallContent()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update8BallContent()
    }
    
    func update8BallContent(){
        randomIndexForBall = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomIndexForBall])
    }
    
}

