//
//  LogInVC.swift
//  Recipe
//
//  Created by Leng Trang on 12/4/20.
//

import UIKit

class LogInVC: UIViewController {

    @IBOutlet weak var UserTxtFld: UITextField!
    @IBOutlet weak var PasswordTxtFld: UITextField!
    @IBOutlet weak var LoginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginBtn.layer.cornerRadius = 50

        // Do any additional setup after loading the view.
    }
    @IBAction func LoginEvent(_ sender: Any) {
        performSegue(withIdentifier: "showRecipe", sender: self)
    }
    
}
