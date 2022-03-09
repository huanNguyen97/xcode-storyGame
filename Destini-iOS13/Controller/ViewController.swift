//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Initialize View
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    // End view
    
    // Initialize var
    var storyBrain = StoryBrain()
    // End var
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // First time to load the app
        storyLabel.text = storyBrain.seeFirstStory().0
        choice1Button.setTitle(storyBrain.seeFirstStory().1, for: .normal)
        choice2Button.setTitle(storyBrain.seeFirstStory().2, for: .normal)
        // End first time
    }

    // Event List
    @IBAction func choiceMade(_ sender: UIButton) {
        var nextStory = storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        storyLabel.text = nextStory.0
        choice1Button.setTitle(nextStory.1, for: .normal)
        choice2Button.setTitle(nextStory.2, for: .normal)    }
    // End List
}

