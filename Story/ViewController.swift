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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = "Вы видите развилку на дороге"
        choiceOne.setTitle("Поверни налево.", for: .normal)
        choiceTwo.setTitle("Поверни направо.", for: .normal)
    }

    
    @IBAction func takeAnswer(_ sender: UIButton) {
        
    }
    

}

