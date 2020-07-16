//
//  LoginViewController.swift
//  OnTheMap
//
//  Created by Khalid Aqeeli on 14/07/2020.
//  Copyright © 2020 Khalid Aqeeli. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK:- IBOutlet
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    //MARK:- Notify the user if the login fails

    
    //MARK:- Allow the user to login
    
    @IBAction func loginButton(_ sender: Any) {
        APIClient.login(username: self.emailTextField.text ?? "No" , password: self.passwordTextField.text ?? "no", completion: self.handlerLoginResonse(success:error:))
    }
            
    func handlerLoginResonse(success:Bool,error:Error?) -> Void{
        print(success)
        if success {
            DispatchQueue.main.sync {
                self.performSegue(withIdentifier: "showMap", sender: nil)
            }
        }
    }
}

