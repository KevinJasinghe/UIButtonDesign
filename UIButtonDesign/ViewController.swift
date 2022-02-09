//
//  ViewController.swift
//  UIButtonDesign
//
//  Created by Kevin Jasinghe on 2022-02-08.
//

import UIKit


class ViewController: UIViewController {
    
    var buttonOne:UIButton = UIButton()
    
    var buttonTwo:UIButton = UIButton()
    
    var buttonThree:UIButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get screen width and height.
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        
        createButtonOne(screenWidth: screenWidth, screenHeight: screenHeight)
        
        createButtonTwo(screenWidth: screenWidth, screenHeight: screenHeight)
        
        createButtonThree(screenWidth: screenWidth, screenHeight: screenHeight)
        
        // Add three button to main screen as subviews.
        self.view.addSubview(buttonOne)
        self.view.addSubview(buttonTwo)
        self.view.addSubview(buttonThree)
    }
    
    func createButtonOne(screenWidth:CGFloat, screenHeight:CGFloat){
        // Create a system default style UIButton object in swift source code.
        buttonOne = UIButton(type: UIButton.ButtonType.system)
        
        // Set UIButton x, y position, width and height.
        buttonOne.frame = CGRect(x: 10, y: screenHeight/2, width: screenWidth/2, height: 100)
        
        // Make the button locate at screen center.
        buttonOne.center = CGPoint(x: screenWidth/2, y: screenHeight/2)
        
        // Set button background color to light gray.
        buttonOne.backgroundColor = UIColor.lightGray
        
        // Set button text font.
        buttonOne.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        // Set button text number of lines, 0 means no lines number limit.
        buttonOne.titleLabel?.numberOfLines = 0
        
        // Set button normal state text and text color.
        buttonOne.setTitle("Create button in swift source code example.", for: UIControl.State.normal)
        buttonOne.setTitleColor(UIColor.red, for: UIControl.State.normal)
        
        // Set button selected state text and text color.
        buttonOne.setTitle("Button one is selected.", for: UIControl.State.selected)
        buttonOne.setTitleColor(UIColor.green, for: UIControl.State.selected)
        
        // Set button highlighted state text and text color.
        buttonOne.setTitle("Button one is highlighted.", for: UIControl.State.highlighted)
        buttonOne.setTitleColor(UIColor.blue, for: UIControl.State.highlighted)
        
        // Set button disabled state text and text color.
        buttonOne.setTitle("Button one is disabled.", for: UIControl.State.disabled)
        buttonOne.setTitleColor(UIColor.yellow, for: UIControl.State.disabled)
    }
    
    func createButtonTwo(screenWidth:CGFloat, screenHeight:CGFloat){
        // Create another system default style UIButton object, when click this button, it will disable buttonOne, when click this button again it will enable buttonOne.
        buttonTwo = UIButton(type: UIButton.ButtonType.system)
        
        buttonTwo.frame = CGRect(x: 0, y: screenHeight - 100, width: screenWidth, height: 50)
        buttonTwo.setTitle("Disable button one.", for: UIControl.State.normal)
        buttonTwo.setTitleColor(UIColor.red, for: UIControl.State.normal)
        buttonTwo.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonTwo.backgroundColor = UIColor.green
        
        // When buttonTwo occurred touchUpInside event then self.clickButtonTwo function will be invoked.
        buttonTwo.addTarget(self, action: #selector(clickButtonTwo), for: UIControl.Event.touchUpInside)
        
        // buttonTwo.addTarget(self, action: Selector("clickButtonTwo"), for: UIControl.Event.touchUpInside)
    }
    
    func createButtonThree(screenWidth:CGFloat, screenHeight:CGFloat){
        // Create another system default style UIButton object, when click this button, it will select buttonOne, when click this button again it will disselect buttonOne.
        buttonThree = UIButton(type: UIButton.ButtonType.system)
        
        buttonThree.frame = CGRect(x: 0, y: screenHeight - 50, width: screenWidth, height: 50)
        buttonThree.setTitle("Select button one.", for: UIControl.State.normal)
        buttonThree.setTitleColor(UIColor.red, for: UIControl.State.normal)
        buttonThree.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonThree.backgroundColor = UIColor.yellow
        
        // Associate button event with event process function.
        buttonThree.addTarget(self, action: #selector(clickButtonThree), for: UIControl.Event.touchUpInside)
    }
    
    /*
     This function will be invoked when click buttonTwo.
     */
    @objc
    func clickButtonTwo(){
        
        if(buttonOne.isEnabled)
        {
            buttonOne.isEnabled = false
            buttonTwo.setTitle("Enable button one", for: UIControl.State.normal)
        }else{
            buttonOne.isEnabled = true
            buttonTwo.setTitle("Disable button one", for: UIControl.State.normal)
        }
    }
    
    /*
     This function will be invoked when click buttonThree.
     */
    @objc
    func clickButtonThree(){
        
        if(buttonOne.isSelected)
        {
            buttonOne.isSelected = false
            buttonThree.setTitle("Select button one", for: UIControl.State.normal)
        }else{
            buttonOne.isSelected = true
            buttonThree.setTitle("Deselect button one", for: UIControl.State.normal)
        }
    }
}
