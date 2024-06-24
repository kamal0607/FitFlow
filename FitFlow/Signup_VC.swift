//
//  Signup_VC.swift
//  FitFlow
//
//  Created by fcp24 on 24/06/24.
//

import UIKit

class Signup_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func Signupback_btn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func Gotologin_btn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Login_VC") as! Login_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
