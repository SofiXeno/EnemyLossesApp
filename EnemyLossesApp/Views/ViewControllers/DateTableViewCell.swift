//
//  DateTableViewCell.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 06.07.2022.
//

import UIKit

class DateTableViewCell: UITableViewCell {

    
    
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var dayNumb: UILabel!
    
    @IBOutlet private weak var date: UILabel!
    
    
    
    
    // MARK: - Properties
    var previousDayEquipmentLooses : EquipmentLossesDto?
    var previousDayPersonnelLooses : PersonnelLossesDto?
    
    var currentDayEquipmentLooses : EquipmentLossesDto?
    var currentDayPersonnelLooses : PersonnelLossesDto?
    
    
    
    // MARK: - Lifecycle
    func config(from array: PersonnelLossesDto){
        self.dayNumb.text = String(array.day)
        self.date.text = array.date
        
        
        
        
    }
    
 
}
