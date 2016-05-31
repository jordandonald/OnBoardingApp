//
//  LoggedInViewController.swift
//  Onboarding App
//
//  Created by Jordan Donald on 5/31/16.
//  Copyright © 2016 Jordan Donald. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loggedinUser = UserController.sharedInstance.logged_in_user
        
        let Email = loggedinUser?.email
        let Pass = loggedinUser?.password
        
        
        greetingLabel.text = "Welcome \(Email!)!"
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var greetingLabel: UILabel!
    
  
    @IBAction func logOutButton(sender: UIButton) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.navigateToLandingViewNavigationController()
    }
    
    
   

}
