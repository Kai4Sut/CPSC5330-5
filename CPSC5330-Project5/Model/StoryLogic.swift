//
//  StoryLogic.swift
//  CPSC5330-Project5
//
//  Created by user260677 on 6/25/24.
//

import Foundation

struct StoryLogic {
    
    var pageID: Int = 0
    var newID: Int = 0
    
    let page = [
        Page(0,
            "You work on a pirate crew and have discovered a treasure map. However, your captain refuses to go off course to visit the island.",
            1,
            2,
            "Convince the crew to mutiny.",
            "Steal a lifeboat and go yourself.",
            "continue"),
        Page(1,
            "You try to convince the crew to mutiny against the captain. Some seem interested, but you need to plead your case.",
            3,
            4,
            "Focus on treasure, apeal to their greed.",
            "Talk of the captain's indifference and singlemindedness.",
            "continue"),
        Page(2,
            "You decide to steal a lifeboat and take your chances. However you only have a limited amount of personal resources.",
            5,
            6,
            "Risk getting caught to steal more supplies.",
            "Take your chances and go straight for the boat.",
            "continue"),
        Page(3,
            "You are successful and begin your adventure towards the island which promises treasure. You are able to navigate the waters and soon arrive on the beach of the island.",
            7,
            8,
            "Search the beach, which may take longer and more supplies.",
            "Search through the brush, which may hold dangers unseen.",
            "continue"),
        Page(4,
            "Many of the crew have worked with the captain for years and are pleased with his way of ruling. They report your mutinous actions to the captain and you are made to walk the plank to your watery grave.",
            0,
            0,
            "Return to Start",
            "Return to Start",
            "perish"),
        Page(5,
            "You choose to look for extra supplies. You are able secure a compass, but the cook is barring your way to the food.",
            9,
            3,
            "Sneak around the cook.",
            "Convince the cook to join your search for treasure.",
            "continue"),
        Page(6,
            "You chose to go straight for the boat to avoid getting caught. You are able to get away from the ship successfully, but without a way to navigate the waters, you eventually starve without ever making it to the island.",
            0,
            0,
            "Return to Start",
            "Return to Start",
            "perish"),
        Page(7,
            "You are eager to get to your treasure and decide to go straight through the brush. Unfortunately the island is home to a new species of venomous snakes. You are bitten and die quickly withour ever knowing if the treasure is found.",
            0,
            0,
            "Return to Start",
            "Return to Start",
            "perish"),
        Page(8,
            "You take your time to navigate around the island by way of the beach. It takes a couple days, but you safely make it to the X marked on the map. After some digging you find the treasure! Congratulations!",
            0,
            0,
            "Return to Start",
            "Return to Start",
            "treasure"),
        Page(9,
            "You try to sneak around the cook, but are apprehended before making your escape. Caught with your stolen goods, you are made to walk to the plank to your watery death.",
            0,
            0,
            "Return to Start",
            "Return to Start",
            "perish")
    ]
    
    
    
    
    mutating func chooseChoiceA() {
        newID = page[pageID].choiceAid
        pageID = newID
    }
    
    mutating func chooseChoiceB() {
        newID = page[pageID].choiceBid
        pageID = newID
    }
    
    func getStoryText() -> String {
        return page[pageID].storyText
    }
    
    func getChoiceAText() -> String {
        return page[pageID].choiceAtext
    }
    
    func getChoiceBText() -> String {
        return page[pageID].choiceBtext
    }
    
    func getResult() -> String {
        return page[pageID].result
    }
    
    
}
