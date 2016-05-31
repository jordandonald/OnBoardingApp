//
//  RegistrationViewController.swift
//  Onboarding App
//
//  Created by Jordan Donald on 5/31/16.
//  Copyright © 2016 Jordan Donald. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.title = "Register"

        
    
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func register2ButtonTapped(sender: UIButton) {
        let email = emailField.text!
        let password = passwordField.text!
        
        if ((email == "") || (password == "")) {
            let alertController = UIAlertController(title: "WARNING", message: "Please complete the form!", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
            
        else {
        
        let (failureMessage, user) = UserController.sharedInstance.registerUser(email, newPassword: password)
        
        if (user != nil){
            
            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.navigateToLoggedInNavigationController()
            
            print("User registered successfully!")
        } else {
            if (failureMessage != nil){
                let alertController = UIAlertController(title: "WARNING", message: failureMessage, preferredStyle: .Alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
                
                alertController.addAction(OKAction)
                
                self.presentViewController(alertController, animated: true, completion: nil)            }
        }

        print("Register tapped.")
    }
    
    }

    @IBOutlet weak var emailField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    
}
