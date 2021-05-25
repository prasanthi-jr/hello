//
//  ViewController.swift
//  Hello  World
//
//  Created by cunextgenapple on 22/04/21.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func signInWithEmail(_ sender: UIButton) {
        let loginViewController: UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController)!
                            
        self.navigationController?.pushViewController(loginViewController, animated: true)
                                                                                                
    }
 
}
