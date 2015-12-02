//
//  GoNoGoViewController.swift
//  Attention Deficit
//
//  Created by Francesco Perera on 11/28/15.
//  Copyright © 2015 Francesco Perera. All rights reserved.
//

import UIKit
import GameplayKit
import Foundation
class GoNoGoViewController: UIViewController {
    
    var coloredCue : UIImageView!
    var cue : UIColor!
    var colors : [UIColor]!
    var squareColor : UIColor!
    var counter = 0
    var redCounter :Int!
    var counterTimer = NSTimer()
    var goNoGoButton = UIButton()
    var taskLabel = UILabel()
    var points = Int()
    var pointsLabel = UILabel()
    var square = UILabel()
   
    override func viewDidLoad() {
    super.viewDidLoad()
    self.points = 0
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("addPoints"))
    view.userInteractionEnabled = true
    view.addGestureRecognizer(tapGestureRecognizer)
    

       
    }
    
    func addPoints(){
        if self.coloredCue.backgroundColor == UIColor.redColor(){
            self.points+=25
            
        }
        else if self.coloredCue.backgroundColor != UIColor.redColor(){
            self.points-=25
        
        }
        //print(self.points)
    
    }
    
    func generateColor(){
        self.cue = UIColor.redColor()
        self.colors = [UIColor.blueColor(),self.cue,UIColor.orangeColor(),self.cue,UIColor.purpleColor(),self.cue,UIColor.cyanColor(),self.cue,UIColor.yellowColor(),UIColor.blackColor()]
        //print(self.colors)
        
        
        //let shuffled = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(self.colors)
        //print(shuffled)
        var index : Int  = Int(arc4random_uniform(UInt32(self.colors.count)))
        print("%@ is index",index)
        self.squareColor = self.colors[index] as! UIColor
        self.coloredCue.backgroundColor = self.squareColor
        //print(self.squareColor)
        view.addSubview(self.coloredCue)
        
        
    }
    func startCounter(){
        counter = 0
        self.redCounter  = Int(arc4random_uniform(UInt32(5)))
        counterTimer = NSTimer.scheduledTimerWithTimeInterval(1,target:self, selector:"counterMethod",userInfo:nil, repeats: true)
       print("blahadasdsd",redCounter)
    }
  
    func counterMethod(){
        if counter  == 0 {
            self.square.text = "Square 1"
            self.pointsLabel.text = String(self.points)
            if self.redCounter == counter{
                self.coloredCue.backgroundColor = UIColor.redColor()
                
            }
            else {
                generateColor()
                if self.coloredCue.backgroundColor != UIColor.redColor(){
                    self.points+=25
                }
                
            }
            counter+=1
            print("a")
            
        }
        else if counter == 1{
            self.square.text = "Square 2"
            self.pointsLabel.text = String(self.points)
            if self.redCounter == counter{
                self.coloredCue.backgroundColor = UIColor.redColor()
                
            }
            else {
                generateColor()
                if self.coloredCue.backgroundColor != UIColor.redColor(){
                    self.points+=25
                }
                
            }
            counter+=1
            print("b")
            
        }
        else if counter == 2{
            self.square.text = "Square 3"
            self.pointsLabel.text = String(self.points)
            if self.redCounter == counter{
                self.coloredCue.backgroundColor = UIColor.redColor()
                
            }
            else {
                generateColor()
                if self.coloredCue.backgroundColor != UIColor.redColor(){
                    self.points+=25
                }
                
            }
            counter+=1
            print("c")
            
        }
        else if counter == 3{
            self.square.text = "Square 4"
            self.pointsLabel.text = String(self.points)
            if self.redCounter == counter{
                self.coloredCue.backgroundColor = UIColor.redColor()
                
            }
            else {
                generateColor()
                if self.coloredCue.backgroundColor != UIColor.redColor(){
                    self.points+=25
                }
                
            }
            counter+=1
            print("d")
            
        }
        else if counter == 4{
            self.square.text = "Square 5"
            self.pointsLabel.text = String(self.points)
            generateColor()
            if self.redCounter == counter{
                self.coloredCue.backgroundColor = UIColor.redColor()
                
            }
            else {
                generateColor()
                if self.coloredCue.backgroundColor != UIColor.redColor(){
                    self.points+=25
                }
                
            }
            counter+=1
            print("c")
            
        }
        else{
            self.pointsLabel.text = String(self.points)
            counterTimer.invalidate()
            wellDone()
            showEndButton()
            self.pointsLabel.removeFromSuperview()
            self.square.removeFromSuperview()
            print("This is over ")
            print(self.points)
            
        }

    }
    
    
    func showCue(){
        self.taskLabel = UILabel(frame: CGRectMake(0,100,self.view.frame.width,100))
        self.taskLabel.textAlignment = NSTextAlignment.Center
        self.taskLabel.text = "Watch the square change color"
        self.taskLabel.font = self.taskLabel.font.fontWithSize(25)
        
        self.pointsLabel = UILabel(frame: CGRectMake(self.view.frame.width/2,CGRectGetMaxY(self.view.frame)-100,self.view.frame.width/2,100))
        self.pointsLabel.textAlignment = NSTextAlignment.Center
        self.pointsLabel.text = String(self.points)
        self.pointsLabel.font = self.pointsLabel.font.fontWithSize(25)
        
        self.square = UILabel(frame: CGRectMake(0,CGRectGetMaxY(self.view.frame)-100,self.view.frame.width/2,100))
        self.square.textAlignment = NSTextAlignment.Center
        self.square.text = ""
        self.square.font = self.square.font.fontWithSize(20)
//        var centerXConst = NSLayoutConstraint(item: self.coloredCue, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier:1, constant: 1)
//        var centerYConst = NSLayoutConstraint(item: self.coloredCue, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier:1, constant: 1)
        self.coloredCue = UIImageView(frame: CGRectMake(0,0, 200, 200))
//      self.coloredCue.addConstraints([centerXConst,centerYConst])
        self.coloredCue.center = CGPointMake(self.view.center.x, self.view.center.y)
        self.coloredCue.backgroundColor = UIColor.clearColor()
        self.coloredCue.layer.cornerRadius = 8
        self.coloredCue.clipsToBounds = true
        view.addSubview(self.square)
        view.addSubview(self.taskLabel)
        view.addSubview(self.pointsLabel)
        view.addSubview(self.coloredCue)
        

    
    }
    
    func showEndButton(){
        self.goNoGoButton = UIButton(type: .System) as UIButton
        self.goNoGoButton.frame = CGRectMake(0,(CGRectGetMaxY(self.view.frame)-100),150, 50)
        self.goNoGoButton.center=CGPointMake(self.view.frame.width/2, CGRectGetMaxY(self.view.frame)-75)
        self.goNoGoButton.layer.cornerRadius = 8
        self.goNoGoButton.layer.borderWidth = 2
        self.goNoGoButton.layer.borderColor = UIColor(red:12.0/255,green:95.0/255,blue:254.0/255,alpha:1.0).CGColor
        self.goNoGoButton.setTitle("End", forState:.Normal)
        self.goNoGoButton.addTarget(self,action:"endButton", forControlEvents:UIControlEvents.TouchUpInside)
        self.goNoGoButton.tintColor = UIColor(red:12.0/255,green:95.0/255,blue:254.0/255,alpha:1.0)
        self.view.addSubview(self.goNoGoButton)
        
    }
    
    func wellDone(){
        var taskPoints :String = String(self.points)
        var message : String = "Your score is "+taskPoints
        var alert = UIAlertController(title:"Well Done.", message:message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title:"Ok",style:.Default,handler:nil))
        self.presentViewController(alert, animated: true, completion: nil)
    
    }
    
    func endButton(){
        print("go")
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    override func viewDidAppear(animated: Bool) {
        showCue()
        startCounter()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
