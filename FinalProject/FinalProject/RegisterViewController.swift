//
//  RegisterViewController.swift
//  FinalProject
//
//  Created by english on 2024-04-12.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var emailLabel: UITextField!
    
    @IBOutlet weak var registerLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if emailLabel.text != "" && registerLabel.text != "" {
                    Auth.auth().createUser(withEmail: emailLabel.text!, password: registerLabel.text! ){
                        ( authData, error) in
                        if error != nil {
                            self.makeAlert(title: "Firebase Error", message: error?.localizedDescription ?? "Something went wrong!")
                        }else {
                            self.tabBarController?.selectedIndex = 0
                        }
                    }
                }else{
                    makeAlert(title: "Error", message: "Email/Password is missing!") //  custom Alert Function.
                }
               
              

        self.tabBarController?.selectedIndex = 0
    }
    
    func makeAlert(title: String, message: String  ){
           let alert = UIAlertController( title: title, message: message, preferredStyle: UIAlertController.Style.alert)
           let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
           alert.addAction(okButton)
           // The present(_:animated:completion:) method is used to display the alert modally.
           self.present( alert, animated: true, completion: nil)
       }
}
