//
//  HomeScreenVC.swift
//  FitFlow
//
//  Created by fcp24 on 15/06/24.
//

import UIKit

class HomeScreenVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let abs_imageArr = [UIImage(named: "beggner Abs") , UIImage(named: "chest") , UIImage(named: "beg arm") ,UIImage(named: "beg leg") ,UIImage(named: "beg back")]
    let abs_intermediate_imageArr = [UIImage(named: "inter Abs") , UIImage(named: "int chest") , UIImage(named: "int arm") ,UIImage(named: "int leg") ,UIImage(named: "int back")]
    let abs_advance_imageArr = [UIImage(named: "advance abs") , UIImage(named: "advchest") , UIImage(named: "advarm") ,UIImage(named: "advleg") ,UIImage(named: "adv back")]
    
    let abs_lblArr = ["ABS BEGINNER" , "CHEST BEGINNER" ," ARM BEGINNER" ,"LEG BEGINNER" ,"SHOULDER & BACK BEGINNER"]
    let abs_intermediate_lblArr = ["ABS INTERMEDIATE" , "CHEST INTERMEDIATE" ," ARM INTERMEDIATE" ,"LEG INTERMEDIATE" ,"SHOULDER & BACK INTERMEDIATE"]
    let abs_advance_lblArr = ["ABS ADVANCED" , "CHEST ADVANCED" ," ARM ADVANCED" ,"LEG ADVANCED" ,"SHOULDER & BACK ADVANCED"]
    
    let exe_lblArr = ["15 EXERCISES" ,"10 EXERCISES", "15 EXERCISES", "20 EXERCISES" ,"14 EXERCISES"]
    let exe_intermediate_lblArr = ["20 EXERCISES" ,"15 EXERCISES", "22 EXERCISES", "30 EXERCISES" ,"18 EXERCISES"]
    let exe_advance_lblArr = ["20 EXERCISES" ,"18 EXERCISES", "25 EXERCISES", "35 EXERCISES" ,"17 EXERCISES"]
    
    
    
    @IBAction func navButton(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Beginner_VC") as! Beginner_VC
        vc.cardImage = abs_imageArr
        vc.cardTitle = abs_lblArr
        vc.homeTitle = "BEGINNER"
        vc.cardsubTitle = exe_lblArr
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func intermediateBtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Beginner_VC") as! Beginner_VC
        vc.homeTitle = "INTERMEDIATE"
        vc.cardImage = abs_intermediate_imageArr
        vc.cardTitle = abs_intermediate_lblArr
        vc.cardsubTitle = exe_intermediate_lblArr
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func advancebtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Beginner_VC") as! Beginner_VC
        vc.homeTitle = "ADVANCED"
        vc.cardImage = abs_advance_imageArr
        vc.cardTitle = abs_advance_lblArr
        vc.cardsubTitle = exe_advance_lblArr
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @IBAction func Start_btn_home(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Week_VC") as! Week_VC
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
