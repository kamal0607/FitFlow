//
//  Week_VC.swift
//  FitFlow
//
//  Created by fcp24 on 18/06/24.
//

import UIKit

class Week_VC: UIViewController {

    @IBOutlet weak var fd: UIButton!
    
    @IBOutlet weak var WeekcollectionView: UICollectionView!
    let label = ["Day 1" , "Day 2" , "Day 3", "Day 4", "Day 5", "Day 6", "Day 7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.WeekcollectionView.register(UINib(nibName: "StartCollectionViewCell", bundle: nil),  forCellWithReuseIdentifier: "StartCollectionViewCell")
        
        
    }
   

    @IBAction func weekback_btn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension Week_VC : UICollectionViewDataSource , UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexpath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.WeekcollectionView.dequeueReusableCell(withReuseIdentifier: "StartCollectionViewCell", for: indexpath) as! StartCollectionViewCell
        
   cell.Days.text = self.label[indexpath.row]

        
        return cell
    }
    
    
    
    
    
    
}


