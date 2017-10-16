//
//  StoryOutput.swift
//  SillyStories-Culbreth2
//
//  Created by Natasha Culbreth on 9/22/17.
//  Copyright © 2017 Natasha Culbreth. All rights reserved.
//

import UIKit

class StoryOutput: UIViewController {

    @IBOutlet weak var sillyStoryResult: UITextView!
    @IBOutlet weak var storyTitleLabel: UILabel!
    
    var result:String!
    
    var nounOne:String!
    
    var wordOne:String!
    var wordTwo:String!
    var wordThree:String!
    
    
    
    var randomStoryNumber:Int!
    
    
    //CHANGE LABELS
    var labelOne:String!
    var labelTwo:String!
    var labelThree:String!
    
    var chosenStory:String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let storyOne:String = "The \(wordOne!) is here"

        
        selectStory(storyNumber: randomStoryNumber!)
        sillyStoryResult.text = chosenStory

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func selectStory(storyNumber : Int) {
        
        switch storyNumber {
        case 0:
            storyTitleLabel.text = "The \(wordTwo!) Figure"
            chosenStory = "\(wordOne!) decided to book a cheap airb&b in a castle for his trip to Transylvania. Being a rather carefree individual, \(wordOne!) forgot to look at reviews prior to arriving. Unfortunately for them, the first night they woke to a noise, they went out to investigate and saw a \(wordTwo!) figure floating down the staircase. \(wordOne!) \(wordThree!) in terror! What a fright!"
            //FYI have to include the ! at the end else you get it printing "optional(String)"... it's weird
        case 1:
            storyTitleLabel.text = "Alone in the \(wordOne!)"
            chosenStory = "You wake in a dark \(wordOne!), all alone. The last thing you recall is going out for a walk with your beloved \(wordTwo!). You call them but they are no where to be seen. Suddenly you hear a \(wordThree!) behind you. You turn to find a giant were-\(wordTwo!) towering over you. It is a full moon and they look hungry."
        case 2:
            storyTitleLabel.text = "The \(wordTwo!)"
            chosenStory = "On certain nights, a haunting sound can be heard, echoing through the \(wordOne!) halls. One may catch a \(wordThree!) glimpse of a woman, passionately playing the \(wordTwo!) with her ghostly fingers, forever practicing for the recital she never preformed."
        default:
            chosenStory = "How did you get here?"
        }
        print(chosenStory)

    }
    
    
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToStoryInput", sender: self)
        //let inputStoryController = segue.destination as! StoryInput
        //inputStoryController.doTheStuff()
        
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
