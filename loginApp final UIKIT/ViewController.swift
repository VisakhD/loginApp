//
//  ViewController.swift
//  loginApp final UIKIT
//
//  Created by Visakh D on 02/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         if UserDefaults.standard.bool(forKey: "LOGGEDIN") == true {
             let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
             self.navigationController?.pushViewController(homeVC, animated: false)
         }
    }

    @IBAction func logInButton(_ sender: Any) {
        
        if txtUserName.text == "visakh4488" && txtPassword.text == "4488" {
            UserDefaults.standard.setValue(true, forKey: "LOGGEDIN")
            let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
            
    }
    
}

