//
//  RegisterViewController.swift
//  Hello  World
//
//  Created by cunextgenapple on 29/04/21.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    
    @IBOutlet weak var userEmailTextField: UITextField!
    
    
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    let userDefaults = UserDefaults.standard

    
    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = UIColor.green
    }
     @IBAction func registerButton(_ sender: Any) {
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
          let userRepeatPassword = repeatPasswordTextField.text
        
        if userEmail?.isEmpty == true || userPassword?.isEmpty == true || userRepeatPassword?.isEmpty == true
        
        {
            let alertController = UIAlertController(title: "Alert", message: "Please enter all details", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "OK", style: .default) {(action: UIAlertAction) in
        }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            userDefaults.set(userEmailTextField.text, forKey: "userEmail")
            userDefaults.set(userPasswordTextField.text, forKey: "userPassword");
            userDefaults.set(repeatPasswordTextField.text, forKey: "userRepeatPassword")
        
            
            let alertController = UIAlertController(title: "Alert", message: "Successfully Registerd...", preferredStyle: .alert)
            
            let action1 = UIAlertAction(title: "OK", style: .default) {(action: UIAlertAction) in
            }
            alertController.addAction(action1)
            self.present(alertController,animated: true, completion: nil)
        
        
        
    }
     }
}
