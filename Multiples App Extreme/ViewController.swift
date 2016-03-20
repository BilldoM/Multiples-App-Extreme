//
//  ViewController.swift
//  Multiples App Extreme
//
//  Created by William Melvin on 3/19/16.
//  Copyright © 2016 William Melvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var multiplier: Int = 0
    var runningSum: Int = 0
    let maxPress = 10
    var counterCount: Int = 0
    
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multiplyTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multiplyLabel: UILabel!
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBAction func onPressMultiplyButton(sender: AnyObject) {
        let newSum = runningSum + multiplier
        updateLabel(runningSum, mul: multiplier, newSum: newSum)
        runningSum += multiplier
        
        if gameOver() {
            reLoadGame()
        }
    }


    
    @IBAction func pressPlayButton(sender: AnyObject) {
        
            counterCount += 1
            print(counterCount)
        
        
        if multiplyTextField.text != nil && multiplyTextField.text != "" {
            
        logo.hidden = true
        multiplyTextField.hidden = true
        playButton.hidden = true
        
        multiplyLabel.hidden = false
        multiplyButton.hidden = false
            
        resetLabel()
        multiplier = Int(multiplyTextField.text!)!
        runningSum = 0
      
        }
        
    }
    
    func reLoadGame() {
        multiplier = 0
        multiplyTextField.text = ""
        multiplyTextField.hidden = false
        logo.hidden = false
        playButton.hidden = false
        multiplyLabel.hidden = true
        multiplyButton.hidden = true
        resetLabel()
    }
    
    func resetLabel() {
        multiplyLabel.text = "Press Add to Add!"
    }
    
   
    
    func gameOver() -> Bool {
        if counterCount == maxPress {
        return true
        } else {
            return false
        }
    }
    
    
    func updateLabel(oldSum: Int, mul: Int, newSum: Int) {
        multiplyLabel.text = "\(oldSum) + \(mul) = \(newSum)"
    }
    
    
    
       
    
    
    
    
    
    
    
    
    
    
}

