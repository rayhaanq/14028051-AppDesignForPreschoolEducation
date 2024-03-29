//
//  ViewController.swift
//  Rayhaan-PreSchoolApp
//
//  Created by Rayhaan Quazi on 07/02/2017.
//  Copyright © 2017 Rayhaan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num1 : Int?
    var num2 : Int?
    var ans : Int?
    var questionString : String?
    
    @IBOutlet weak var topView: UIView!
    
    
    @IBOutlet weak var quizQuestion: UILabel!
    @IBOutlet weak var questionMark: UILabel!
    @IBOutlet weak var lowerView: UIView!
    
    @IBOutlet weak var upperView: UIView!
    
    
    @IBAction func buttonNumber(sender: UIButton) {
        if Int(sender.titleLabel!.text!) == ans! {
            self.performSegueWithIdentifier("showCorrectAnswer", sender: nil)
            
            
        } else {
            wrongAnswer()
            
        }
        
    }
    
    func wrongAnswer(){
        questionMark.textColor = UIColor.redColor()
        
        UIView.animateWithDuration(0.25, delay: 0, options: [], animations: {
            self.questionMark.alpha = 0.1
            }, completion:{finished in
                if (finished) {
                    UIView.animateWithDuration(0.25, delay: 0, options: [], animations: {
                        self.questionMark.alpha = 1
                        }, completion: nil)
                }
    
        })
    }
    
    
    func genNumbers(){
        num1 = Int(arc4random_uniform(5))
        num2 = Int(arc4random_uniform(5))
        ans = num1! + num2!
    }
    
    func genQuestion() -> String {
        genNumbers()
        questionString = num1!.description + " + " + num2!.description + " = "
        
        return questionString!
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizQuestion.text = genQuestion()
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(false)
        quizQuestion.text = genQuestion()
        lowerView.setNeedsLayout()
        questionMark.textColor = UIColor.blackColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showCorrectView"{
            
        }
        let correctView : CorrectViewController = segue.destinationViewController as! CorrectViewController
        
        correctView.answerLabelText = quizQuestion.text! + String(ans!)
        
    }


}

