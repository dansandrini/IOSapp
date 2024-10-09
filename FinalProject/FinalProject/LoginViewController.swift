//
//  LoginViewController.swift
//  FinalProject
//
//  Created by english on 2024-04-12.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if emailTextField.text != "" && passwordTextField.text != ""{
                    Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
                        ( authData, error) in
                        if error != nil {
                            self.makeAlert(title: "Firebase Error", message: error?.localizedDescription ?? "Something went wrong!")
                        }else{
                            self.performSegue(withIdentifier: "toHomeVC", sender: nil) // Move to the Home page.
                        }
                    }
                }else{
                    makeAlert(title: "Error", message: "Email/Password Missing!") // Custom Function to make an Alert Box.
                }
        
    }
    
    func makeAlert(title: String, message: String  ){
            let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present( alert, animated: true, completion: nil)
        }
    
}
