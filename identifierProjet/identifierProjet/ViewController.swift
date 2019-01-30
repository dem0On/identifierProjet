//
//  ViewController.swift
//  identifierProjet
//
//  Created by ratte valentin on 25/01/2019.
//  Copyright © 2019 ratte valentin. All rights reserved.
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

    @IBAction func exitKeyboard(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    @IBAction func verifyLogin(_ sender: UITextField) {
        if usernameTextField.text == "toto" && passwordTextField.text == "titi"{
            performSegue(withIdentifier: "login", sender: nil)
            
        }else{
            let alert = UIAlertController(title: "Warning", message: "Your username or your password is invalid", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func verifyTapped(_ sender: UITextField) {
        passwordTextField.becomeFirstResponder();
    }
    @IBAction func logVerify(_ sender: UIButton) {
        
        if usernameTextField.text == "toto" && passwordTextField.text == "titi"{
            performSegue(withIdentifier: "login", sender: nil)
            
        }else{
            let alert = UIAlertController(title: "Warning", message: "Your username or your password is invalid", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
}

