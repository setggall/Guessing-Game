//
//  ViewController.swift
//  Guessing Game
//
//  Created by Seth Gallimore on 11/2/16.
//  Copyright © 2016 Seth Gallimore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fingersTextField: UITextField!
    @IBAction func guess(_ sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            resultLabel.text = "You're right!"
        } else {
            resultLabel.text = "Wrong! It was " + diceRoll + " finger(s)."
        }
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

