//
//  ViewController.swift
//  Attention Deficit
//
//  Created by Francesco Perera on 11/21/15.
//  Copyright © 2015 Francesco Perera. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController{
    
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("first print is viewDidLoad")
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        print("first print is viewDidAppear")
        self.label = UILabel(frame: CGRectMake(0,100,self.view.frame.width, 200))
        self.label.text = ""
        
        view.addSubview(self.label)
    }
    
    
    @IBAction func consentButton(sender: AnyObject) {
        print("consentButton was tapped")
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRunUUID: nil)
        taskViewController.delegate = self
        
        presentViewController(taskViewController,animated: true, completion:  nil)
        print("taskViewController was presented")
    }
    
    @IBAction func surveyTappedButton(sender: AnyObject){
        
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    
    }
    
    @IBAction func memoryTappedButton(sender: AnyObject){
        let taskViewController = ORKTaskViewController(task: MemoryTask, taskRunUUID:  nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    
    }
    
    @IBAction func goNoGoTappedButton(sender:AnyObject){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let goNoGoVC : UINavigationController = storyboard.instantiateViewControllerWithIdentifier("GoNoGo") as! UINavigationController
        self.presentViewController(goNoGoVC, animated: true, completion: nil)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : ORKTaskViewControllerDelegate {
    
    
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
