//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Rosario Tarabocchia on 9/9/15.
//  Copyright (c) 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UITextField!
    
    @IBOutlet var results: UILabel!
    
    @IBAction func button(sender: AnyObject) {
        
        var numberInt = Int(number.text!)
        
        if numberInt != nil {
            
            var unwrappedNum = numberInt!
            
            var isPrime = true
            
            if unwrappedNum == 1 {
                
                isPrime = false
            }
            
            if unwrappedNum != 2 && unwrappedNum != 1 {
                
                for var i = 2; i < unwrappedNum; i++ {
                    
                    if unwrappedNum % i == 0 {
                        
                        isPrime = false
                    }
                }
                
            }
            
            if isPrime == true {
                
                results.text = "\(unwrappedNum) is a PRIME!"
            }
            
            else {
            
                results.text = "\(unwrappedNum) is NOT a prime!"
            }
        
        }
        
        else {
         
        
        results.text = "Please enter a number."
        
        
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



