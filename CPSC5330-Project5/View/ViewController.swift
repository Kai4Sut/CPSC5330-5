//
//  ViewController.swift
//  CPSC5330-Project5
//
//  Created by user260677 on 6/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Background: UIImageView!
    
    @IBOutlet weak var StoryLabel: UILabel!
    
    @IBOutlet weak var ChoiceAButton: UIButton!
    
    @IBOutlet weak var ChoiceBButton: UIButton!
    
    var pagelogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerChoiceA(_ sender: UIButton) {
        
        pagelogic.chooseChoiceA()
        updateUI()
        
        
    }
    
    @IBAction func answerChoiceB(_ sender: UIButton) {
        
        pagelogic.chooseChoiceB()
        updateUI()
        
    }
    
    @objc func updateUI() {
        StoryLabel.text = pagelogic.getStoryText()
        ChoiceAButton.setTitle(pagelogic.getChoiceAText(), for: .normal)
        ChoiceBButton.setTitle(pagelogic.getChoiceBText(), for: .normal)
        
        
    }
    
    // My simulator won't work, and since I have to use macincloud, I don't have permissions to try and reinstall or update files or anything. So not sure if this actually works or not
}

