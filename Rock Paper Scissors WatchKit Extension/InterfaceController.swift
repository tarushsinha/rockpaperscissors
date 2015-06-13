//
//  InterfaceController.swift
//  Rock Paper Scissors WatchKit Extension
//
//  Created by Tarush Sinha on 6/13/15.
//  Copyright (c) 2015 Tarush Sinha. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    /** rock = 0
    scissors = 1
    paper = 2 */
    
    @IBOutlet var rock: WKInterfaceButton! //Rock Button
    
    @IBOutlet var scissors: WKInterfaceButton! //Scissors Button
    
    @IBOutlet var paper: WKInterfaceButton! //Paper Button
    
    @IBOutlet var display: WKInterfaceLabel! //Result Label
    
    @IBOutlet var score: WKInterfaceLabel! //Score Label
    
    var computerChoice = -1
    
    var userInput = -1
    
    var userScore = 0
    
    var computerScore = 0

    @IBAction func rockAction() {
        userInput = 0
        computerChoice = Int(arc4random_uniform(3))
        
        if(computerChoice == 0){
            display.setText("Computer chose Rock. Tie!")
        }
            
        else if(computerChoice == 1){
            display.setText("Computer chose Scissors. You Win!")
            userScore++
            score.setText("Score: \(userScore) - \(computerScore)")
        }
            
        else if(computerChoice == 2){
            display.setText("Computer chose Paper. You Lose!")
            computerScore++
            score.setText("Score: \(userScore) - \(computerScore)")
        }
    }
    
    @IBAction func scissorAction() {
        userInput = 1
        computerChoice = Int(arc4random_uniform(3))
        
        if(computerChoice == 0){
            display.setText("Computer chose Rock. You Lose!")
            computerScore++
            score.setText("Score: \(userScore) - \(computerScore)")
        }
        
        else if(computerChoice == 1){
            display.setText("Computer chose Scissors. Tie!")
        }
            
        else if(computerChoice == 2){
            display.setText("Computer chose Paper. You Win!")
            userScore++
            score.setText("Score: \(userScore) - \(computerScore)")
        }
    }
    @IBAction func paperAction() {
        userInput = 2
        computerChoice = Int(arc4random_uniform(3))
        
        if(computerChoice == 0){
            display.setText("Computer chose Rock. You Win!")
            userScore++
            score.setText("Score: \(userScore) - \(computerScore)")
        }
            
        else if(computerChoice == 1){
            display.setText("Computer chose Scissors. You Lose!")
            computerScore++
            score.setText("Score: \(userScore) - \(computerScore)")
        }

        else if(computerChoice == 2){
            display.setText("Computer chose Paper. Tie!")
        }
    }
    
}
