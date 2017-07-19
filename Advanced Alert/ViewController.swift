//
//  ViewController.swift
//  Advanced Alert
//
//  Created by Kelvin on 7/19/17.
//  Copyright © 2017 Kelvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Error Message", message: "You are required to login in order to proceed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alert2Pressed(_ sender: Any) {
        let alert = UIAlertController(title: "Question 1", message: "Do you have money to proceed?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }

    @IBAction func alertTPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Login", message: "Please enter your information", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: { (UIAlertAction) in
            let user = alert.textFields![0] as UITextField
            let password = alert.textFields![1] as UITextField
            
            print("The username entered is " + user.text! + " and the password is " + password.text!)
        }))
        
        alert.addTextField { (UITextField) in
            UITextField.placeholder = "E-mail"
        }
        
        alert.addTextField { (UITextField) in
            UITextField.placeholder = "Password"
            UITextField.isSecureTextEntry = true
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

