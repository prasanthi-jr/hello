//
//  LoginViewController.swift
//  Hello  World
//
//  Created by cunextgenapple on 11/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    
    

    @IBOutlet weak var userEmailTextField: UITextField!
        
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    let userDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any){
        
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        if userEmail?.isEmpty == true || userPassword?.isEmpty == true{
            
            let alertController = UIAlertController(title: "Alert", message: "Please enter email and password", preferredStyle: .alert)
            
            let action1 = UIAlertAction(title: "OK", style: .default) {(action: UIAlertAction) in
        }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
            }
        else
        {
            if userEmailTextField.text == userDefaults.string(forKey: "userEmail") || userPasswordTextField.text == userDefaults.string(forKey: "userePassword")
            {
                let alertController = UIAlertController(title: "Alert", message: "Successfully Login", preferredStyle: .alert)
                
                let action1 = UIAlertAction(title: "OK", style: .default) {(action: UIAlertAction) in
            }
                alertController.addAction(action1)
                self.present(alertController, animated: true, completion: nil)
        }
        
else
        
        {
            let alertController = UIAlertController(title: "Alert", message: "Email and Password is wrong", preferredStyle: .alert)
            
            let action1 = UIAlertAction(title: "OK", style: .default) {(action: UIAlertAction) in
        }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

}
