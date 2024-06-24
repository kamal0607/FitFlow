//
//  Login_VC.swift
//  FitFlow
//
//  Created by fcp24 on 24/06/24.
//

import UIKit

class Login_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func Loginback_btn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Login_btn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeScreenVC") as! HomeScreenVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
