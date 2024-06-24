//
//  Landing_VC.swift
//  FitFlow
//
//  Created by fcp24 on 24/06/24.
//

import UIKit

class Landing_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func Start_btn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Signup_VC") as! Signup_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
