//
//  ViewController.swift
//  Rayhaan-PreSchoolApp
//
//  Created by Rayhaan Quazi on 07/02/2017.
//  Copyright © 2017 Rayhaan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var num1 = arc4random_uniform(5).description
    var num2 = arc4random_uniform(5).description
    
    @IBOutlet weak var quizQuestion: UILabel!
    
    
    
    
    func setQuestion() -> String {
        let question = num1 + " + " + num2 + " = ?"
        return question
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        quizQuestion.text = setQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

