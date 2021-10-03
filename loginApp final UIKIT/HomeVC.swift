//
//  HomeVC.swift
//  loginApp final UIKIT
//
//  Created by Visakh D on 02/09/21.
//

import UIKit


class HomeVC: UIViewController {
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func logOutButton(_ sender: Any) {
        UserDefaults.standard.setValue(false, forKey: "LOGGEDIN")
        self.navigationController?.popViewController(animated: true)
    }
    
   
    
}
