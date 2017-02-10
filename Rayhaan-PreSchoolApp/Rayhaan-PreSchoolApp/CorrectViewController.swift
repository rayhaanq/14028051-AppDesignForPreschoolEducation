//
//  CorrectViewController.swift
//  Rayhaan-PreSchoolApp
//
//  Created by Rayhaan Quazi on 09/02/2017.
//  Copyright © 2017 Rayhaan. All rights reserved.
//

import UIKit

class CorrectViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet var stars: [UIImageView]!
    
    
    var answerLabelText = String()
    
    @IBAction func btnPlayAgain(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = answerLabelText
        
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(false)
        
        for str in stars {
            let randDuration = (Double(arc4random_uniform(15)+5))/10
            UIView.animateWithDuration(randDuration, delay: 0, options: .Repeat, animations: {
                str.alpha = 0.1
                
                }, completion: nil)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}