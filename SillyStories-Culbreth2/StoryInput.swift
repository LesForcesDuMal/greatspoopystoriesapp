//
//  StoryInput.swift
//  SillyStories-Culbreth2
//
//  Created by Natasha Culbreth on 9/22/17.
//  Copyright © 2017 Natasha Culbreth. All rights reserved.
//

import UIKit

class StoryInput: UIViewController {
    
    //make random number generator each time it is brought up
    //based on random number choose different story, which will have different
    //words associated "noun", etc requirements with it, sp change the labels

    //linked textfields from main.storyboard
    @IBOutlet weak var wordOne: UITextField!
    @IBOutlet weak var wordTwo: UITextField!
    @IBOutlet weak var wordThree: UITextField!

    
    @IBOutlet weak var storyTitleLabel: UILabel!
    @IBOutlet weak var wordOneLabel: UILabel!
    @IBOutlet weak var wordTwoLabel: UILabel!
    @IBOutlet weak var wordThreeLabel: UILabel!
    
    var storyNumber:Int!
    
    //let a = String(noun1.text!)!
    //let b = String(adjective.text!)!
    
    
    override func viewDidLoad() {
        
        
        
        //maybe need to set up label modification here
        //before the view loads
        
        //selectStory()
        
         super.viewDidLoad()
        
        //selectStoryNumber()
        //selectStoryLabels(storyNumber: storyNumber)
        
        setUpStory()
        
        
       

        
        

        // Do any additional setup after loading the view.
    }
    
    
    func setUpStory() {
        
        print("SETUP")
        storyTitleLabel.text = "Some Great Spoopy Stories"
        wordOne.text = ""
        wordTwo.text = ""
        wordThree.text = ""
        selectStoryNumber()
        selectStoryLabels(storyNumber: storyNumber)
        
    }
    
    
    //SET RANDOM NUM HERE FOR STUFF
    func selectStoryNumber() {
        
        let number = arc4random_uniform(3)
        
        print("Number in selectStoryNumber, \(number)")
        storyNumber = Int(number)
        print("StoryNumber, \(storyNumber!)")
        
    }
    
    func selectStoryLabels(storyNumber: Int){
        
        switch storyNumber {
        case 0:
            wordOneLabel.text = "Name:"
            wordTwoLabel.text = "Adjective:"
            wordThreeLabel.text = "Past tense verb:"
        case 1:
            wordOneLabel.text = "Location"
            wordTwoLabel.text = "Animal"
            wordThreeLabel.text = "Animal noise"
        case 2:
            wordOneLabel.text = "Adjective"
            wordTwoLabel.text = "Noun"
            wordThreeLabel.text = "Adjective"
        default:
            //There is an error if we reach this one
            wordOneLabel.text = "NONE"
            wordTwoLabel.text = "NONE"
            wordThreeLabel.text = "NONE"
        }
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let outputStoryController = segue.destination as! StoryOutput
        
        //puts the textfield input into a string
        let a = String(wordOne.text!)!
        let b = String(wordTwo.text!)!
        let c = String(wordThree.text!)!
        
        //puts the string info out into variables in outputStorycontroller
        // class to use . variable = string variable
        outputStoryController.wordOne = a
        outputStoryController.wordTwo = b
        outputStoryController.wordThree = c
        outputStoryController.randomStoryNumber = storyNumber
    }
    
    @IBAction func unwindToStoryInput(segue:UIStoryboardSegue) {
         setUpStory()
    
    }
    
    

}
