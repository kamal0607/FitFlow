//
//  Beginner_VC.swift
//  FitFlow
//
//  Created by fcp24 on 14/06/24.
//

import UIKit

class Beginner_VC: UIViewController {
    
    var homeTitle = String()
    var cardImage = [UIImage?]()
    var cardTitle = [String]()
    var cardsubTitle = [String]()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var beginner_table_view: UITableView!
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = homeTitle
        
        self.beginner_table_view.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
}


extension Beginner_VC : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cardImage.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.beginner_table_view.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.abs_image.image = cardImage[indexPath.row]
//        cell.abs_image.image = self.abs_imageArr[indexPath.row]
        cell.abs_label.text = cardTitle[indexPath.row]
        cell.exe_label.text = self.cardsubTitle[indexPath.row]
        
        return cell
        
        
        
    }
}


