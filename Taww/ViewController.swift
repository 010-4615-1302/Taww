//
//  ViewController.swift
//  Taww
//
//  Created by D7703_27 on 2018. 3. 26..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    private var guessNumber = 0
    private var countGuesses = 0
    private var guessAgain = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guessNumber = Int(arc4random_uniform(100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessbutton(_ sender: Any) {
        if guessAgain{
            countGuesses = 0
            input.text!=""
            guessNumber = Int(arc4random_uniform(100))
            guessAgain = false
        }
        if Int(input.text!) != nil {
            
            let inputnum = Int(input.text!)
            countGuesses += 1
            
            if inputnum == guessNumber {
                resultLabel.text = "Congratulations. You got the number. It took You \(countGuesses) guesses to guess the number Try Again?"
                guessAgain = true
                
                
            }else if inputnum! < guessNumber {
                resultLabel.text = "Try higher number !!"
                
            }else if inputnum! > guessNumber {
                resultLabel.text = "Try lower number !!"
                
            }
            input.text = ""
        }
        else {
            resultLabel.text = "Please Enter a Number you are guessing !!"
        }
            
        }
    
    
    @IBAction func buttonReset(_ sender: Any) {
        
        input.text = ""
        resultLabel.text = ""
        
    }
    
    
}
    
        
        
        
        
        
    
    


