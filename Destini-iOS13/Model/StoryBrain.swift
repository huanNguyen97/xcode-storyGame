//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    // Initiazlie var
    let longStory: [Story] = [
        Story(
            title: "You see a fork on the road.",
            choice1: "Take a left.",
            choice2: "Take a right."
        ),
        Story(
            title: "You see a tiger.",
            choice1: "Shout for help.",
            choice2: "Play dead."
        ),
        Story(
            title: "You find a treasure chest.",
            choice1: "Open it.",
            choice2: "Check for traps."
        )]
    // End var
    
    // Method List
    // First story
    func seeFirstStory() -> (String, String, String) {
        return (
            longStory[0].storyTitle,
            longStory[0].choice1,
            longStory[0].choice2
        )
    }
    // End first
    
    // Nextstory
    func nextStory(userChoice: String) -> (String, String, String) {
        
        // Check condition
        if userChoice == longStory[0].choice1 {
            return (
                longStory[1].storyTitle,
                longStory[1].choice1,
                longStory[1].choice2
            )
        } else {
            return (
                longStory[2].storyTitle,
                longStory[2].choice1,
                longStory[2].choice2
            )
        }
        // End condition
    }
    // End method
    // End List
}
