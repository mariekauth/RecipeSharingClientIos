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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        MockDBS.shared.clearUser()
    }
    @IBAction func LoginEvent(_ sender: Any) {
        MockDBS.shared.filterByUser(userName: UserTxtFld.text ?? "")
        performSegue(withIdentifier: "showRecipeBook", sender: self)
    }
    
}
