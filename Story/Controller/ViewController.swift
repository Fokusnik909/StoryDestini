//
//  ViewController.swift
//  Story
//
//  Created by Артур  Арсланов on 02.08.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func takeAnswer(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        
        updateUI()
    }
    
    
    func updateUI(){
        storyLabel.text = storyBrain.getTitle()
        choiceOne.setTitle(storyBrain.getChoice1(), for: .normal)
        choiceTwo.setTitle(storyBrain.getChoice2(), for: .normal)
    }

}

