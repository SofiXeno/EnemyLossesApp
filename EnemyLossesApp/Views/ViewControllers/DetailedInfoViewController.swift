//
//  DetailedInfoViewController.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 06.07.2022.
//

import UIKit

class DetailedInfoViewController: UIViewController {

   
    
    // MARK: - IBOutlets
    @IBOutlet private weak var dayNumb: UILabel!
    @IBOutlet private weak var date: UILabel!
    @IBOutlet private weak var personnelButton: UIButton!
    @IBOutlet private weak var equipmentButton: UIButton!
    @IBOutlet private weak var mainView: UIView!
    @IBOutlet private weak var personnelStack: UIStackView!
    @IBOutlet private weak var equipmentStack: UIStackView!
   
    
    
    
    // MARK: - Actions
    
    @IBAction func showPersonnelLosses(_ sender: Any) {
        self.personnelButton.backgroundColor = UIColor(named: "UA-B")
        self.personnelStack.isHidden = false
    }
    
    
    @IBAction func showEquipmentLosses(_ sender: Any) {
        self.equipmentButton.backgroundColor = UIColor(named: "UA-Y")
        self.equipmentStack.isHidden = false
    }
    
    // MARK: - Properties
    
    
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        
        self.personnelStack.isHidden = true
        self.equipmentStack.isHidden = true
        
        
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 

}
