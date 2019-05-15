//
//  SignInViewController.swift
//  semesterProjectGroup21
//
//  Created by Isiah Manns on 5/13/19.
//  Copyright © 2019 Group 21. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUp(_ sender: Any) {
        // Validate input / scrape all fields for mailcious input
        
        // Save to database
        
        // Show alert, then navigate back to login screen
        let alertController = UIAlertController(title: "Account Created",
                                                message: "Your account has been created succesfully. Please log in.",
                                                preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
            self.navigationController?.popViewController(animated: true)
        }))
        
        self.present(alertController, animated: true)
    }
}
